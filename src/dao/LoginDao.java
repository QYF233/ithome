package dao;

import entity.User;

import java.util.List;

public interface LoginDao  {
    public boolean queryAdminByName(User user);

    public boolean queryUserByName(User user);

    public String articleCount();

    public String commentCount();
}
