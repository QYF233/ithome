package dao.impl;

import com.db.DataBaseConnection;
import dao.ArticleDao;
import entity.Article;
import factory.AdminDaoFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ArticleDaoImpl implements ArticleDao {
    @Override
    public String classify(String id) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        String classify = null;
        String sql = "select * from classifyinfo where id=?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setInt(1, Integer.parseInt(id));
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            classify = rs.getString("classify");
        }
        return classify;
    }

    @Override
    public void insert(Article article) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        String sql = "insert into articleinfo (title,author,content,classifyid,tags,time,pic) value(?,?,?,?,?,?,?)";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, article.getTitle());
        pstmt.setString(2, article.getAuthor());
        pstmt.setString(3, article.getContent());
        pstmt.setString(4, article.getClassifyid());
        pstmt.setString(5, article.getTags());
        pstmt.setString(6, article.getTime());
        pstmt.setString(7, article.getPic());
        pstmt.executeUpdate();
        con.close();
        pstmt.close();
    }

    @Override
    public void del(String id) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        String sql = "delete from articleinfo where id=?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setInt(1, Integer.parseInt(id));
        pstmt.executeUpdate();
        pstmt.close();
        con.close();
    }

    @Override
    public List queryAll() throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        List all = new ArrayList();
        String sql = "select articleinfo.id, articleinfo.title, articleinfo.author, articleinfo.content, articleinfo.classifyid, articleinfo.tags," +
                " articleinfo.commentnum, articleinfo.time, articleinfo.pic , classifyinfo.classify " +
                "from articleinfo,classifyinfo where classifyinfo.id=articleinfo.classifyid order by id desc";
        PreparedStatement pstmt = con.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            Article article = new Article();
            article.setId(rs.getString("id"));
            article.setTitle(rs.getString("title"));
            article.setAuthor(rs.getString("author"));
            article.setContent(rs.getString("content"));
            article.setClassifyid(rs.getString("classify"));
            article.setTags(rs.getString("tags"));
            article.setTime(rs.getString("time"));
            article.setPic(rs.getString("pic"));
            all.add(article);
        }
        return all;
    }

    @Override
    public Article queryAll(String id) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        Article article = new Article();
        String sql = "select articleinfo.id, articleinfo.title, articleinfo.author, articleinfo.content, articleinfo.classifyid, articleinfo.tags, " +
                "articleinfo.commentnum, articleinfo.time, articleinfo.pic , classifyinfo.classify " +
                "from articleinfo,classifyinfo where classifyinfo.id=articleinfo.classifyid and articleinfo.id=?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setInt(1, Integer.parseInt(id));
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            article.setId(rs.getString("id"));
            article.setTitle(rs.getString("title"));
            article.setAuthor(rs.getString("author"));
            article.setContent(rs.getString("content"));
            article.setClassifyid(rs.getString("classifyid"));
            article.setTags(rs.getString("tags"));
            article.setTime(rs.getString("time"));
            article.setPic(rs.getString("pic"));
            article.setClassify(rs.getString("classify"));
        }
        return article;
    }

    @Override
    public void update(Article article, String id) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        String sql = "update articleinfo set title=?,author=?,content=?, classifyid=?,tags=?,time=?,pic=? where id=?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, article.getTitle());
        pstmt.setString(2, article.getAuthor());
        pstmt.setString(3, article.getContent());
        pstmt.setString(4, article.getClassifyid());
        pstmt.setString(5, article.getTags());
        pstmt.setString(6, article.getTime());
        pstmt.setString(7, article.getPic());
        pstmt.setInt(8, Integer.parseInt(id));
        pstmt.executeUpdate();
        pstmt.close();
        con.close();
    }

    @Override
    public String count() throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        String sql = "select count(1) from articleinfo";
        PreparedStatement pstmt = con.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();
        rs.next();
        String count = rs.getString("count(1)");
        return count;
    }

    @Override
    public List getList(int pg, String key) {
        int pagesize = 4;
        List list = new ArrayList();
        int begin = (pg - 1) * pagesize;
        int end = pagesize;
        try {
            String sql = ("SELECT * from articleinfo where title like '%" + key + "%' order by id desc limit " + begin + "," + end);
            PreparedStatement pstmt = null;
            DataBaseConnection dbc = new DataBaseConnection();
            pstmt = dbc.getConnection().prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Article article = new Article();
                article.setId(rs.getString("id"));
                article.setTitle(rs.getString("title"));
                article.setAuthor(rs.getString("author"));
                article.setContent(rs.getString("content"));
                //调用查询classify的方法
                article.setClassify(classify(rs.getString("classifyid")));
                article.setTags(rs.getString("tags"));
                String commentnum =AdminDaoFactory.getCommentDaoInstance().querynum(rs.getString("id"));
                article.setCommentnum(commentnum);
                AdminDaoFactory.getCommentDaoInstance().insertnum(rs.getString("id"));
                article.setTime(rs.getString("time"));
                article.setPic(rs.getString("pic"));
                list.add(article);


            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public int getTotalPage() {
        int pagesize = 5;
        int totalCount = 0;
        int totalPage = 0;
        try {
            String sql = "select count(id) from articleinfo";
            PreparedStatement pstmt = null;
            DataBaseConnection dbc = new DataBaseConnection();
            pstmt = dbc.getConnection().prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                totalCount = rs.getInt(1);
                totalPage = (totalCount - 1) / pagesize + 1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return totalPage;
    }

    @Override
    public List indexList() {
        List list = new ArrayList();
        try {
            String sql = ("select articleinfo.id, articleinfo.title, articleinfo.author, articleinfo.content, articleinfo.classifyid, articleinfo.tags, " +
                    "articleinfo.commentnum, articleinfo.time, articleinfo.pic , classifyinfo.classify " +
                    "from articleinfo,classifyinfo where classifyinfo.id=articleinfo.classifyid order by id desc limit 0,6");
            PreparedStatement pstmt = null;
            DataBaseConnection dbc = new DataBaseConnection();
            pstmt = dbc.getConnection().prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Article article = new Article();
                article.setId(rs.getString("id"));
                article.setTitle(rs.getString("title"));
                article.setAuthor(rs.getString("author"));
                article.setContent(rs.getString("content"));
                article.setClassifyid(rs.getString("classify"));
                article.setTags(rs.getString("tags"));
                article.setTime(rs.getString("time"));
                article.setPic(rs.getString("pic"));
                list.add(article);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List indexList(int a, int b) {
        List list = new ArrayList();
        try {
            String sql = ("select articleinfo.id, articleinfo.title, articleinfo.author, articleinfo.content, articleinfo.classifyid, articleinfo.tags, " +
                    "articleinfo.commentnum, articleinfo.time, articleinfo.pic , classifyinfo.classify " +
                    "from articleinfo,classifyinfo where classifyinfo.id=articleinfo.classifyid order by id desc limit "+a+","+b+"");
            PreparedStatement pstmt = null;
            DataBaseConnection dbc = new DataBaseConnection();
            pstmt = dbc.getConnection().prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Article article = new Article();
                article.setId(rs.getString("id"));
                article.setTitle(rs.getString("title"));
                article.setAuthor(rs.getString("author"));
                article.setContent(rs.getString("content"));
                article.setClassifyid(rs.getString("classify"));
                article.setTags(rs.getString("tags"));
                article.setTime(rs.getString("time"));
                article.setPic(rs.getString("pic"));
                list.add(article);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List classify() throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        List all = new ArrayList();
        String sql = "select * from classifyinfo";
        PreparedStatement pstmt = con.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            Article article = new Article();
            article.setClassify(rs.getString("classify"));
            article.setAlias(rs.getString("alias"));
            article.setId(rs.getString("id"));
            all.add(article);
        }
        return all;
    }

    @Override
    public void addclassify(Article article) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        String sql = "insert into classifyinfo (classify,alias) value(?,?)";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, article.getClassify());
        pstmt.setString(2, article.getAlias());
        pstmt.executeUpdate();
        con.close();
        pstmt.close();
    }

    @Override
    public void delclassify(String id) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        String sql = "delete from classifyinfo where id=?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setInt(1, Integer.parseInt(id));
        pstmt.executeUpdate();
        pstmt.close();
        con.close();
    }

    @Override
    public Article queryclassify(String id) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        Article article = new Article();
        String sql = "select * from classifyinfo where id=?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setInt(1, Integer.parseInt(id));
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            article.setClassify(rs.getString("classify"));
            article.setAlias(rs.getString("alias"));
            article.setId(rs.getString("id"));
        }
        return article;
    }

    @Override
    public void upclassify(String id, Article article) throws SQLException {
        DataBaseConnection db = new DataBaseConnection();
        Connection con = db.getConnection();
        String sql = "update classifyinfo set classify=?,alias=? where id=?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, article.getClassify());
        pstmt.setString(2, article.getAlias());
        pstmt.setString(3, id);
        pstmt.executeUpdate();
        pstmt.close();
        con.close();
    }

}
