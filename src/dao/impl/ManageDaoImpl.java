package dao.impl;

import com.db.DataBaseConnection;
import dao.ManageDao;
import entity.Manage;
import entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ManageDaoImpl implements ManageDao {
    @Override
    public List queryAll() throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();

        List all =new ArrayList();

        String sql = "select * from admininfo";
        PreparedStatement pstmt = con.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            Manage manage = new Manage();
            manage.setId(rs.getString("adminid"));
            manage.setUsername(rs.getString("username"));
            manage.setPassword(rs.getString("password"));
            manage.setLogintime(rs.getString("logintime"));
            manage.setPic(rs.getString("pic"));
            all.add(manage);
        }
        return all;
    }



    @Override
    public void insert(Manage manage) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        String sql = "insert into admininfo (adminid,username,password,logintime) value(?,?,?,?)";
        PreparedStatement pstmt = con.prepareStatement(sql);

        pstmt.setString(1, manage.getId());
        pstmt.setString(2, manage.getUsername());
        pstmt.setString(3, manage.getPassword());
        pstmt.setString(4, manage.getLogintime());

        pstmt.executeUpdate();

        con.close();
        pstmt.close();
    }

    @Override
    public void del(String id) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        String sql = "delete from admininfo where adminid=?";
        PreparedStatement pstmt = con.prepareStatement(sql);

        pstmt.setInt(1, Integer.parseInt(id));

        pstmt.executeUpdate();

        pstmt.close();
        con.close();
    }

    @Override
    public Manage query(String id) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        Manage manage = new Manage();
        String sql = "select * from admininfo where adminid=?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setInt(1, Integer.parseInt(id));
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            manage.setId(rs.getString("adminid"));
            manage.setUsername(rs.getString("username"));
            manage.setPassword(rs.getString("password"));
            manage.setLogintime(rs.getString("lodintime"));
        }

        return manage;
    }



    @Override
    public void update(Manage manage, String id) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        String sql = "update admininfo set username=?,password=?,logintime=? where adminid=?";
        PreparedStatement pstmt = con.prepareStatement(sql);

        pstmt.setString(1, manage.getUsername());

        pstmt.setString(2, manage.getPassword());
        pstmt.setString(3, manage.getLogintime());
        pstmt.setInt(4, Integer.parseInt(id));

        pstmt.executeUpdate();

        pstmt.close();
        con.close();

    }

    @Override
    public String queryAhead(String name) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        List all =new ArrayList();
        Manage manage = new Manage();
        String pic = null;
        String sql = "select pic from admininfo where username=? ";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, name);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            manage.setPic(rs.getString("pic"));
            pic = rs.getString("pic");
        }
        if(pic==null){
            pic = "none";
        }
        return pic;
    }

    @Override
    public String queryUhead(String name) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        List all =new ArrayList();
        Manage manage = new Manage();
        String username = null;
        String sql = "select pic from userinfo where username=? ";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, name);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            username = rs.getString("pic");
        }
        if(username==null){
            username = "none";
        }
        return username;
    }

    @Override
    public void register(User user) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        String sql = "insert into userinfo (username,password,email,cratetime,power) value(?,?,?,?,2)";
        PreparedStatement pstmt = con.prepareStatement(sql);

        pstmt.setString(1, user.getUsername());
        pstmt.setString(2, user.getPassword());
        pstmt.setString(3, user.getEmail());
        pstmt.setString(4, user.getCratetime());
        pstmt.executeUpdate();

        con.close();
        pstmt.close();
    }

}
