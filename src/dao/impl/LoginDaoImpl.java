package dao.impl;

import com.db.DataBaseConnection;
import dao.LoginDao;
import entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class LoginDaoImpl implements LoginDao {
    @Override
    public boolean queryAdminByName(User user) {
        DataBaseConnection db = new DataBaseConnection();
        Connection conn = db.getConnection();
        boolean query = false;
        String sql = "SELECT password FROM admininfo WHERE username = ?";
        try {
            PreparedStatement pstt = conn.prepareStatement(sql);
            pstt.setString(1, user.getUsername());
            ResultSet rs = pstt.executeQuery();
            if (rs.next()) {
                String password = rs.getString("password");
                String pwd = user.getPassword();
                if (password.equals(pwd)) {
                    query = true;
                }else {
                    query = false;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.close();
        }
        return query;
    }

    @Override
    public boolean queryUserByName(User user) {
        DataBaseConnection db = new DataBaseConnection();
        Connection conn = db.getConnection();
        boolean query = false;
        String sql = "SELECT password FROM userinfo WHERE username = ?";
        try {
            PreparedStatement pstt = conn.prepareStatement(sql);
            pstt.setString(1, user.getUsername());
            ResultSet rs = pstt.executeQuery();
            if (rs.next()) {
                String password = rs.getString("password");
                String pwd = user.getPassword();
                if (password.equals(pwd)) {
                    query = true;
                }else {
                    query = false;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.close();
        }
        return query;
    }

    @Override
    public String articleCount() {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        String sql1 = "select count(1) from articleinfo";
        PreparedStatement pstmt1 = null;
        ResultSet rs1 = null;
        String count1 = null;
        try {
            pstmt1 = con.prepareStatement(sql1);
            rs1 = pstmt1.executeQuery();
            rs1.next();

            count1  = rs1.getString("count(1)");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count1;
    }

    @Override
    public String commentCount() {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        String sql2 = "select count(1) from commentinfo";
        PreparedStatement pstmt2 = null;
        String count2 = null;
        try {
            pstmt2 = con.prepareStatement(sql2);
            ResultSet rs2 = null;
            rs2 = pstmt2.executeQuery();
            rs2.next();
            count2  = rs2.getString("count(1)");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count2;
    }
}
