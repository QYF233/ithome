package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entity.Article;
import factory.AdminDaoFactory;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class IThomeAction extends ActionSupport {
    private String id;
    ActionContext actionContext = ActionContext.getContext();
    Map session = actionContext.getSession();
    HttpServletRequest request = ServletActionContext.getRequest();
    private List list;
    private List list1;
    private List list3;

    public String list() throws Exception {

        list = AdminDaoFactory.getArticleDaoInstance().indexList(0, 6);
        list3 = AdminDaoFactory.getArticleDaoInstance().indexList(6, 3);
        List comment = null;
        try {
            comment = AdminDaoFactory.getCommentDaoInstance().queryAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            list1 = AdminDaoFactory.getArticleDaoInstance().queryAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        HttpSession session = request.getSession();
        String name = (String) session.getAttribute("username");
        String power = (String) session.getAttribute("power");
        request.setAttribute("username", name);
        request.setAttribute("power", power);
        request.setAttribute("comment", comment);

        return "list";
    }

    public String info() throws Exception {

/*        String id = request.getParameter("id");*/
        if (id == null) {
            id = (String) session.get("infoId");
        }
        Article article = new Article();
        try {
            article = AdminDaoFactory.getArticleDaoInstance().queryAll(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        List comment = null;
        try {
            comment = AdminDaoFactory.getCommentDaoInstance().queryById(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("comment", comment);
        request.setAttribute("article", article);

        return "info";
    }

    public String time() throws SQLException {
        list = AdminDaoFactory.getArticleDaoInstance().queryAll();
        return "time";
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }

    public List getList3() {
        return list3;
    }

    public void setList3(List list3) {
        this.list3 = list3;
    }

    public List getList1() {
        return list1;
    }

    public void setList1(List list1) {
        this.list1 = list1;
    }
}
