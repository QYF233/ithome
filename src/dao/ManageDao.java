package dao;

import entity.Manage;
import entity.User;

import java.sql.SQLException;
import java.util.List;

public interface ManageDao {
    //查询
    public List queryAll() throws SQLException;

    //增加
    public void insert(Manage manage) throws SQLException;

    // 删除管理员
    public void del(String id) throws SQLException;

    //修改
    public Manage query(String id) throws SQLException;

    public void update(Manage manage, String id) throws SQLException;

    //按名字查头像
    public String queryAhead(String name) throws SQLException;

    public String queryUhead(String name) throws SQLException;

    //注册用户
    public void register(User user) throws SQLException;

}
