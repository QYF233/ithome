<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="com.db.DataBaseConnection" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<!doctype html>
<html>
<head>
<meta charset="gbk">
<title>首页_杨青个人博客 - 一个站在web前端设计之路的女技术员个人博客网站</title>
<meta name="keywords" content="个人博客,杨青个人博客,个人博客模板,杨青" />
<meta name="description" content="杨青个人博客，是一个站在web前端设计之路的女程序员个人网站，提供个人博客模板免费资源下载的个人原创网站。" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/base.css" rel="stylesheet">
<link href="css/time.css" rel="stylesheet">
<link href="css/m.css" rel="stylesheet">
<script src="js/jquery.min.js" ></script>
<script src="js/scrollReveal.js"></script>
<script src="js/time.js" ></script>
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
</head>
<%

  DataBaseConnection db = new DataBaseConnection();
  Connection con = db.getConnection();
  request.setCharacterEncoding("gb2312");

%>
<body>
<header class="header-navigation" id="header">
  <nav>
    <div class="logo"><a href="#">IT之家</a></div>
    <h2 id="mnavh"><span class="navicon"></span></h2>
    <ul id="starlist">
      <li><a href="index.jsp">网站首页</a></li>
      <li><a href="about.jsp">关于我</a></li>
      <li><a href="share.jsp">模板分享</a></li>
      <li><a href="list.jsp">博客日记</a></li>
      <li class="menu"><a href="fengmian.jsp">学无止境</a>
        <ul class="sub">
          <li><a href="#">慢生活</a></li>
          <li><a href="#">美文欣赏</a></li>
        </ul>
      </li>
<%--      <li><a href="info.jsp">慢生活</a></li>--%>
      <li><a href="time.jsp">时间轴</a></li>
      <li><a href="login.jsp">登录</a></li>
    </ul>
    <div class="searchbox">
      <div id="search_bar" class="search_bar">
        <form  id="searchform" action="[!--news.url--]e/search/index.php" method="post" name="searchform">
          <input class="input" placeholder="想搜点什么呢.." type="text" name="keyboard" id="keyboard">
          <input type="hidden" name="show" value="title" />
          <input type="hidden" name="tempid" value="1" />
          <input type="hidden" name="tbname" value="news">
          <input type="hidden" name="Submit" value="搜索" />
          <p class="search_ico"> <span></span></p>
        </form>
      </div>
    </div>
  </nav>
</header>
<article>
  <div class="timebox">
    <ul>
<%--      <%
        String sql = "select * from articleinfo order by id asc limit 0,6" ;
        PreparedStatement pstmt = con.prepareStatement(sql) ;
        ResultSet rs= pstmt.executeQuery();
        while(rs.next()) {
          String id = rs.getString("id");
      %>
      <li><span><%=rs.getString("time") %></span><i><a href="info.jsp?id=<%= id %>" target="_blank"><%=rs.getString("title") %></a></i></li>
      <% }

      %>--%>
  <li><span><!%=rs.getString("time") %></span><i><a href="info.jsp?id=<!%= id %>" target="_blank"><!%=rs.getString("title") %></a></i></li>
    </ul>
  </div>
  <div class="pagelist"><a title="Total record">&nbsp;<b>160</b> </a>&nbsp;&nbsp;&nbsp;<b>1</b>&nbsp;<a href="/jstt/index_2.html">2</a>&nbsp;<a href="/jstt/index_3.html">3</a>&nbsp;<a href="/jstt/index_4.html">4</a>&nbsp;<a href="/jstt/index_5.html">5</a>&nbsp;<a href="/jstt/index_6.html">6</a>&nbsp;<a href="/jstt/index_2.html">下一页</a>&nbsp;<a href="/jstt/index_14.html">尾页</a></div>
</article>
<footer>
  <p>Design by <a href="http://www.yangqq.com" target="_blank">秋叶枫个人博客</a> <a href="/">浙ICP备88888888号-1</a></p>
</footer>
<a href="#" class="cd-top">Top</a>
</body>
</html>
