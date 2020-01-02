package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entity.Article;
import entity.Comment;
import factory.AdminDaoFactory;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;


public class CommentAction extends ActionSupport {
    private Comment comment;
    private List list;
    private String id;
    private String newcomment;
    private String reviewerNull;
    private Article article;
    private String checkbox;

    ActionContext actionContext = ActionContext.getContext();
    Map session = actionContext.getSession();
    HttpServletRequest request = ServletActionContext.getRequest();

    //查询
    public String list() throws SQLException {
        list = AdminDaoFactory.getCommentDaoInstance().queryAll();
        return "list";
    }

    //添加评论
    public String add() {
        //如果用户未登录。添加评论者默认为游客
        if (comment.getReviewer().equals("null")) {
            comment.setReviewer(reviewerNull);
        }
        Date date = new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String s = df.format(date);
        comment.setTime(s);
        comment.setComment(newcomment);
        try {
            AdminDaoFactory.getCommentDaoInstance().insert(comment);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        session.put("infoId", comment.getArticleid());
        return "addComment";
    }

    //删除
    public String del() throws SQLException {
        AdminDaoFactory.getCommentDaoInstance().del(id);
        return "del";
    }

    //删除多选
    public String delAll() throws SQLException {
        String[] arraycheck = checkbox.split(", ");
        if (arraycheck != null) {
            for (int i = 0; i < arraycheck.length; i++) {
                try {
                    AdminDaoFactory.getCommentDaoInstance().del(arraycheck[i]);
                } catch (SQLException e) {
                    e.printStackTrace();
                    System.out.println("CommentAction中delAll()错误");
                }
            }
        }
        return "delAll";
    }

    public String queryComment() throws SQLException {
        Comment comment = new Comment();
        comment = AdminDaoFactory.getCommentDaoInstance().query(id);
        request.setAttribute("comment", comment);
        return "queryComment";
    }

    public String updateComment() throws SQLException {
        AdminDaoFactory.getCommentDaoInstance().updateComment(comment, id);
        return "updateComment";
    }

    public String getCheckbox() {
        return checkbox;
    }

    public void setCheckbox(String checkbox) {
        this.checkbox = checkbox;
    }

    public Comment getComment() {
        return comment;
    }

    public void setComment(Comment comment) {
        this.comment = comment;
    }

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNewcomment() {
        return newcomment;
    }

    public void setNewcomment(String newcomment) {
        this.newcomment = newcomment;
    }

    public String getReviewerNull() {
        return reviewerNull;
    }

    public void setReviewerNull(String reviewerNull) {
        this.reviewerNull = reviewerNull;
    }

    public Article getArticle() {
        return article;
    }

    public void setArticle(Article article) {
        this.article = article;
    }
}
