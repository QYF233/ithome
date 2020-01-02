package dao;

import entity.Article;

import java.sql.SQLException;
import java.util.List;

public interface ArticleDao {
    public String classify(String id) throws SQLException;

    // 增加文章
    public void insert(Article article) throws SQLException;

    // 删除文章
    public void del(String id) throws SQLException;

    // 查询全部文章
    public List queryAll() throws SQLException;

    //按id查询 Article输出
    public Article queryAll(String id) throws SQLException;

    // 更新文章
    public void update(Article article, String id) throws SQLException;

    //计算文章数
    public String count() throws SQLException;
    //foreach查询

    //遍历当前页信息
    public List getList(int pg, String key) ;

    //获取总信息条数，计算总页数
    public  int getTotalPage() ;

    //首页查询
    public List indexList() ;
    public List indexList(int a, int b) ;

    public List classify() throws SQLException;

    //添加评论数
//添加栏目
    public void addclassify(Article article) throws SQLException;

    public void delclassify(String id) throws SQLException;

    public Article queryclassify(String id) throws SQLException;

    public void upclassify(String id, Article article) throws SQLException;


}
