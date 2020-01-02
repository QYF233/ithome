package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entity.User;
import factory.AdminDaoFactory;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

import java.sql.SQLException;
import java.util.Map;

public class LoginAction extends ActionSupport {
    private String nextAction;
    private User user;
    private String count1;
    private String count2;
    private String pic;
    private String messageReg;
    ActionContext actionContext = ActionContext.getContext();
    Map session = actionContext.getSession();
    HttpServletRequest req = ServletActionContext.getRequest();

    public String execute() throws Exception {

        String rCode = (String) session.get("rCode");

        if (rCode.equals(verify)) {
            if (AdminDaoFactory.getLoginDaoInstance().queryAdminByName(user)) {
                session.put("name", user.getUsername());
                session.put("power", "1");
                return "admin";
            } else if (AdminDaoFactory.getLoginDaoInstance().queryUserByName(user)) {
                session.put("name", user.getUsername());
                session.put("power", "2");
                return "user";
            } else {
                req.setAttribute("message", "用户名或密码错误！");
                return "error";
            }
        } else {
            /*req.setAttribute("message", "验证码错误！");*/
            return "error";
        }

    }

    public String adminIndex() {
        count1 = AdminDaoFactory.getLoginDaoInstance().articleCount();
        count2 = AdminDaoFactory.getLoginDaoInstance().commentCount();
        return "adminIndex";
    }

    public String pic() {
        String username = req.getParameter("username");
        try {
            String pic1 = AdminDaoFactory.getManageDaoInstance().queryAhead(username);
            String pic2 = AdminDaoFactory.getManageDaoInstance().queryUhead(username);
            if (!pic1.equals("none")) {
                pic = pic1;
            }
            if (!pic2.equals("none")) {
                pic = pic2;
            }
            if (pic1.equals("none") && pic2.equals("none")) {
                pic = "icon/icon.png";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("pic", pic);
        return "pic";
    }
    public String headPic() {
        String username = req.getParameter("username");
        try {
            String pic1 = AdminDaoFactory.getManageDaoInstance().queryAhead(username);
            String pic2 = AdminDaoFactory.getManageDaoInstance().queryUhead(username);
            if (!pic1.equals("none")) {
                pic = pic1;
            }
            if (!pic2.equals("none")) {
                pic = pic2;
            }
            if (pic1.equals("none") && pic2.equals("none")) {
                pic = "icon/icon.png";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("pic", pic);
        return "headPic";
    }

    public String reg() {
        String username = req.getParameter("username");
        try {
            String pic1 = AdminDaoFactory.getManageDaoInstance().queryAhead(username);
            String pic2 = AdminDaoFactory.getManageDaoInstance().queryUhead(username);
            if (!pic1.equals("none") || !pic2.equals("none")) {
                messageReg = "该用户已存在！";
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "reg";
    }

    public String register(){

        try {
            AdminDaoFactory.getManageDaoInstance().register(user);
        } catch (SQLException e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

    public void validate() {
        if(user != null){
            if (user.getUsername() ==null || user.getUsername().trim().equals("")){
                super.addFieldError("username",getText("user.required"));
            }
            if (user.getPassword() ==null || user.getPassword().trim().equals("")){
               super.addFieldError("username",getText("pass.required"));
            }
        }
    }
    public String getNextAction() {
        return nextAction;
    }

    private String verify;

    public String getVerify() {
        return verify;
    }

    public void setVerify(String verify) {
        this.verify = verify;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void setNextAction(String nextAction) {
        this.nextAction = nextAction;
    }

    public String getCount1() {
        return count1;
    }

    public void setCount1(String count1) {
        this.count1 = count1;
    }

    public String getCount2() {
        return count2;
    }

    public void setCount2(String count2) {
        this.count2 = count2;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getMessageReg() {
        return messageReg;
    }

    public void setMessageReg(String messageReg) {
        this.messageReg = messageReg;
    }
}
