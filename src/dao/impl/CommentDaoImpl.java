package dao.impl;

import com.db.DataBaseConnection;
import dao.CommentDao;
import entity.Comment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CommentDaoImpl implements CommentDao {
    @Override
    public List queryById(String articleid) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        List list =new ArrayList();
        String sql = "select commentinfo.id,commentinfo.articleid,articleinfo.title,commentinfo.reviewer,commentinfo.comment,commentinfo.time " +
                "from commentinfo,articleinfo where commentinfo.articleid=articleinfo.id and articleid = ?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setInt(1, Integer.parseInt(articleid));
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            Comment comment = new Comment();
            comment.setId(rs.getString("id"));
            comment.setArticleid(rs.getString("articleid"));
            comment.setTitle(rs.getString("title"));
            comment.setReviewer(rs.getString("reviewer"));
            comment.setComment(rs.getString("comment"));
            comment.setTime(rs.getString("time"));
            list.add(comment);
        }

        return list;
    }

    @Override
    public List queryAll() throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        List list =new ArrayList();
        String sql = "select commentinfo.articleid,commentinfo.id,articleinfo.title,commentinfo.reviewer,commentinfo.comment,commentinfo.time from commentinfo,articleinfo " +
                "where commentinfo.articleid=articleinfo.id order by commentinfo.id desc";
        PreparedStatement pstmt = con.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            Comment comment = new Comment();
            comment.setId(rs.getString("id"));
            comment.setArticleid(rs.getString("articleid"));
            comment.setTitle(rs.getString("title"));
            comment.setReviewer(rs.getString("reviewer"));
            comment.setComment(rs.getString("comment"));
            comment.setTime(rs.getString("time"));
            list.add(comment);
        }
        return list;
    }


    @Override
    public void insert(Comment comment) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        String sql = "insert into commentinfo (articleid, reviewer,comment, time) value(?,?,?,?)";
        PreparedStatement pstmt = con.prepareStatement(sql);

        pstmt.setString(1, comment.getArticleid());
        pstmt.setString(2, comment.getReviewer());
        pstmt.setString(3, comment.getComment());
        pstmt.setString(4,comment.getTime());

        pstmt.executeUpdate();

        con.close();
        pstmt.close();
    }

    @Override
    public Comment query(String id) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        String sql = "select * from commentinfo where id=?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, id);
        ResultSet rs = pstmt.executeQuery();
        Comment comment = new Comment();
        while (rs.next()) {

            comment.setId(rs.getString("id"));
            comment.setComment(rs.getString("comment"));
            comment.setReviewer(rs.getString("reviewer"));
            comment.setArticleid(rs.getString("articleid"));
            comment.setTime(rs.getString("time"));

//            all.add(comment);
        }
        return comment;
    }

    @Override
    public void del(String id) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        String sql = "delete from commentinfo where id=?";
        PreparedStatement pstmt = con.prepareStatement(sql);

        pstmt.setInt(1, Integer.parseInt(id));
        System.out.println(pstmt);
        pstmt.executeUpdate();

        pstmt.close();
        con.close();
    }

    @Override
    public void dela(String articleid) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        String sql = "delete from commentinfo where articleid=?";
        PreparedStatement pstmt = con.prepareStatement(sql);

        pstmt.setString(1, articleid);
        pstmt.executeUpdate();
        pstmt.executeUpdate();

        pstmt.close();
        con.close();
    }

    @Override
    public String querynum(String id) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        String sql = "select count(id) from commentinfo where articleid=?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, id);
        ResultSet rs = pstmt.executeQuery();
        String num =null;
        while (rs.next()) {
            num = rs.getString("count(id)");
        }

        pstmt.close();
        con.close();
        return num;
    }

    @Override
    public void insertnum(String id) throws SQLException {
        String num =  querynum(id);
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        String sql = "update articleinfo set commentnum=? where id=?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, num);
        pstmt.setString(2, id);
        pstmt.executeUpdate();
        con.close();
        pstmt.close();

    }

    @Override
    public void updateComment(Comment comment,String id) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        String sql = "update commentinfo set articleid=?,reviewer=?,comment=?,time=? where id=?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, comment.getArticleid());
        pstmt.setString(2, comment.getReviewer());
        pstmt.setString(3, comment.getComment());
        pstmt.setString(4, comment.getTime());
        pstmt.setInt(5, Integer.parseInt(id));
        pstmt.executeUpdate();
        pstmt.close();
        con.close();
    }
}
