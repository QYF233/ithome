package action;

import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

public class Time {
    private Date today=new Date();
    private String s;
    ActionContext actionContext = ActionContext.getContext();
    Map session = actionContext.getSession();
    HttpServletRequest request = ServletActionContext.getRequest();
    Date date = new Date();
    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
   public Time(){
       s = df.format(date);
       request.setAttribute("s",s);
   }
    public String getTime(){

        request.setAttribute("s",s);
        return "";
    }

    public Date  getToday () {
        return today;
    }
    public void  setToday (Date today) {
        this.today = today;
    }

    public String getS() {
        return s;
    }

    public void setS(String s) {
        this.s = s;
    }
}
