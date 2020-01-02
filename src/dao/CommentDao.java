package dao;

import entity.Comment;

import java.sql.SQLException;
import java.util.List;

public interface CommentDao {

    public List queryById(String articleid) throws SQLException;

    public List queryAll() throws SQLException;

    public void insert(Comment comment) throws SQLException;

    public Comment query(String id) throws SQLException;

    public void del(String id) throws SQLException;

    public void dela(String articleid) throws SQLException;

    //查询评论数
    public String querynum(String id) throws SQLException;

    //添加评论数
    public void insertnum(String id) throws SQLException;

    public void updateComment(Comment comment,String id) throws SQLException;


}
