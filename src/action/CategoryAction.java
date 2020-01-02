package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entity.Article;
import factory.AdminDaoFactory;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class CategoryAction extends ActionSupport {
    private String classify;
    private String alias;
    private String id;


    ActionContext actionContext = ActionContext.getContext();
    Map session = actionContext.getSession();
    HttpServletRequest request = ServletActionContext.getRequest();

    public String CategoryList() throws SQLException {
        List all = null;
        try {
            all = AdminDaoFactory.getArticleDaoInstance().classify();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("all", all);

        return "CategoryList";
    }

    //添加
    public String CategoryAdd() {
        Article article = new Article();
        article.setClassify(classify);
        article.setAlias(alias);
        try {
            AdminDaoFactory.getArticleDaoInstance().addclassify(article);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "CategoryAdd";
    }

    //删除
    public String CategoryDel() throws SQLException {
        String id = request.getParameter("id");
        try {
            AdminDaoFactory.getArticleDaoInstance().delclassify(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "CategoryDel";
    }


    //修改前查询
    public String queryCategory() throws SQLException {
        String id = request.getParameter("id");
        Article article = new Article();
        try {
            article = AdminDaoFactory.getArticleDaoInstance().queryclassify(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("classify", article);
        return "queryCategory";
    }

    //修改
    public String upCategory() throws Exception {
        Article article = new Article();
        article.setClassify(classify);
        article.setAlias(alias);
        try {
            AdminDaoFactory.getArticleDaoInstance().upclassify(id, article);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "upCategory";
    }


    public String getClassify() {
        return classify;
    }

    public void setClassify(String classify) {
        this.classify = classify;
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}
