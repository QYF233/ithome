package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entity.Manage;
import factory.AdminDaoFactory;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class AdminAction extends ActionSupport {

    private String id;
    private Manage manage;
    private List list;
    ActionContext actionContext = ActionContext.getContext();
    Map session = actionContext.getSession();
    HttpServletRequest request = ServletActionContext.getRequest();

    //查询
    public String adminList() throws SQLException {

        list = AdminDaoFactory.getManageDaoInstance().queryAll();
        request.setAttribute("list", list);
        return "adminList";
    }

    //添加评论
    public String adminAdd() throws SQLException {
        AdminDaoFactory.getManageDaoInstance().insert(manage);
        return "adminAdd";
    }

    //删除
    public String adminDel() throws SQLException {
        AdminDaoFactory.getManageDaoInstance().del(id);
        return "adminDel";
    }

    //修改前查询
    public String adminQuery() throws SQLException {
        manage = AdminDaoFactory.getManageDaoInstance().query(id);
        return "adminQuery";
    }

    //修改
    public String adminUpdate() throws SQLException {
        AdminDaoFactory.getManageDaoInstance().update(manage, id);
        return "adminUpdate";
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Manage getManage() {
        return manage;
    }

    public void setManage(Manage manage) {
        this.manage = manage;
    }

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }
}
