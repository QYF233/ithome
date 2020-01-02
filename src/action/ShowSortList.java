package action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import entity.UserInfo;
import factory.AdminDaoFactory;

public class ShowSortList extends ActionSupport {

    private List listUserInfo = new ArrayList();

    public List getListUserInfo() {
        return listUserInfo;
    }

    public void setListUserInfo(List listUserInfo) {
        this.listUserInfo = listUserInfo;
    }

    @Override
    public String execute() throws Exception {

        AdminDaoFactory.getArticleDaoInstance().queryAll();

        listUserInfo.add(AdminDaoFactory.getArticleDaoInstance().queryAll());
        return "showsortlist";
    }

}
