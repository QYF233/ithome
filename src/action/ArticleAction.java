package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entity.Article;
import factory.AdminDaoFactory;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class ArticleAction extends ActionSupport {
    ActionContext actionContext = ActionContext.getContext();
    Map session = actionContext.getSession();
    HttpServletRequest request = ServletActionContext.getRequest();

    private File upload;// 实际上传文件
    private String uploadFileName; // 上传文件名，可以给上传文件重命名
    private ServletContext context;
    private List articles;
    private Article article;
    private String id;
    private List classify;
    private String checkbox;

    //文章列表查询
    public String list() throws SQLException {
        String key = request.getParameter("key");
        if (key == null) key = "";
        String pg = request.getParameter("pg");
        int pageNo = 1;
        if (pg != null) {
            pageNo = Integer.parseInt(pg);
        }
        String count = AdminDaoFactory.getArticleDaoInstance().count();
        articles = AdminDaoFactory.getArticleDaoInstance().getList(pageNo, key);
        int totalPage = AdminDaoFactory.getArticleDaoInstance().getTotalPage();
        request.setAttribute("count", count);
        request.setAttribute("pg", pageNo);
        request.setAttribute("key", key);
        request.setAttribute("totalPage", totalPage);
        return "list";
    }

    //查询下拉列表
    public String classify() throws SQLException {
        classify = AdminDaoFactory.getArticleDaoInstance().classify();
        session.put("classify", classify);
        return "classify";
    }

    //添加
    public String add() {
        try {
            String targetDirectory = ServletActionContext.getServletContext().getRealPath("/images");
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmss");//按时间重命名
            String targetFileName = sdf.format(new Date()) + "." + uploadFileName.substring(uploadFileName.lastIndexOf(".") + 1);
            File target = new File(targetDirectory, targetFileName);
            FileUtils.copyFile(upload, target);
            setUploadFileName(target.getPath());//保存文件的存放路径
            // 写数据库，调用JavaBean的add方法
            int i = uploadFileName.indexOf("images");  //
            String filename = uploadFileName.substring(i + 7);  // 得到 xxx.jpg，去掉服务器路径
            article.setPic(filename);  //把图片名给flower这个实体类对象，因为文件域不能从表单注入
            AdminDaoFactory.getArticleDaoInstance().insert(article);
        } catch (Exception e) {
            return INPUT;
        }
        return "add";
    }

    //添加前查询分类
    public String addQuery() throws SQLException {
        classify = AdminDaoFactory.getArticleDaoInstance().classify();
        request.setAttribute("classify", classify);
        return "addQuery";
    }

    //删除
    public String del() throws SQLException {
        AdminDaoFactory.getArticleDaoInstance().del(id);
        AdminDaoFactory.getCommentDaoInstance().dela(id);
        return "del";
    }

    //删除多选
    public String delAll() throws SQLException {
        String[] arraycheck = checkbox.split(", ");
        if (arraycheck != null) {
            for (int i = 0; i < arraycheck.length; i++) {
                try {
                    AdminDaoFactory.getArticleDaoInstance().del(arraycheck[i]);
                    AdminDaoFactory.getCommentDaoInstance().dela(arraycheck[i]);
                } catch (SQLException e) {
                    e.printStackTrace();
                    System.out.println("del()错误");
                }
            }
        }
        return "delAll";
    }

    //修改前查询
    public String input() throws SQLException {
        classify = AdminDaoFactory.getArticleDaoInstance().classify();
        article = AdminDaoFactory.getArticleDaoInstance().queryAll(id);
        request.setAttribute("classify", classify);
        request.setAttribute("article", article);
        return "input";
    }

    //修改
    public String update() throws Exception {
        if (uploadFileName == null) {
            System.out.println("文件不存在");
        } else {
            String FileDirectory = ServletActionContext.getServletContext().getRealPath("/images");//服务器路径
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmss");//按时间重命名
            System.out.println(uploadFileName);
            String TimeName = sdf.format(new Date()) + "." + uploadFileName.substring(uploadFileName.lastIndexOf(".") + 1);
            File file = new File(FileDirectory, TimeName);
            FileUtils.copyFile(upload, file);
            setUploadFileName(file.getPath());//保存文件的存放路径
            // 写数据库，调用JavaBean的add方法
            int i = uploadFileName.indexOf("images");  //
            String filename = uploadFileName.substring(i + 7);  // 得到 xxx.jpg，去掉服务器路径
            article.setPic(filename);
        }
        AdminDaoFactory.getArticleDaoInstance().update(article, id);
        return "update";
    }

//-------------------------------------------


    public String getCheckbox() {
        return checkbox;
    }

    public void setCheckbox(String checkbox) {
        this.checkbox = checkbox;
    }

    public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    }

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

    public File getUpload() {
        return upload;
    }

    public void setUpload(File upload) {
        this.upload = upload;
    }

    public String getUploadFileName() {
        return uploadFileName;
    }

    public void setUploadFileName(String uploadFileName) {
        this.uploadFileName = uploadFileName;
    }

    public ServletContext getContext() {
        return context;
    }

    public void setContext(ServletContext context) {
        this.context = context;
    }

    public List getArticles() {
        return articles;
    }

    public void setArticles(List articles) {
        this.articles = articles;
    }

    public Article getArticle() {
        return article;
    }

    public void setArticle(Article article) {
        this.article = article;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public List getClassify() {
        return classify;
    }

    public void setClassify(List classify) {
        this.classify = classify;
    }

    public void setUsername(String username) {
    }
}
