package factory;

import dao.ArticleDao;
import dao.CommentDao;
import dao.LoginDao;
import dao.ManageDao;
import dao.impl.ArticleDaoImpl;
import dao.impl.CommentDaoImpl;
import dao.impl.LoginDaoImpl;
import dao.impl.ManageDaoImpl;

public class AdminDaoFactory {
    public static ArticleDao getArticleDaoInstance(){
        return new ArticleDaoImpl();
    }
    public static ManageDao getManageDaoInstance(){
        return new ManageDaoImpl();
    }
    public static CommentDao getCommentDaoInstance(){
        return new CommentDaoImpl();
    }
    public static LoginDao getLoginDaoInstance(){
        return new LoginDaoImpl();
    }
}
