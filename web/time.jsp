<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="com.db.DataBaseConnection" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<!doctype html>
<html>
<head>
<meta charset="gbk">
<title>��ҳ_������˲��� - һ��վ��webǰ�����֮·��Ů����Ա���˲�����վ</title>
<meta name="keywords" content="���˲���,������˲���,���˲���ģ��,����" />
<meta name="description" content="������˲��ͣ���һ��վ��webǰ�����֮·��Ů����Ա������վ���ṩ���˲���ģ�������Դ���صĸ���ԭ����վ��" />
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
    <div class="logo"><a href="#">IT֮��</a></div>
    <h2 id="mnavh"><span class="navicon"></span></h2>
    <ul id="starlist">
      <li><a href="index.jsp">��վ��ҳ</a></li>
      <li><a href="about.jsp">������</a></li>
      <li><a href="share.jsp">ģ�����</a></li>
      <li><a href="list.jsp">�����ռ�</a></li>
      <li class="menu"><a href="fengmian.jsp">ѧ��ֹ��</a>
        <ul class="sub">
          <li><a href="#">������</a></li>
          <li><a href="#">��������</a></li>
        </ul>
      </li>
<%--      <li><a href="info.jsp">������</a></li>--%>
      <li><a href="time.jsp">ʱ����</a></li>
      <li><a href="login.jsp">��¼</a></li>
    </ul>
    <div class="searchbox">
      <div id="search_bar" class="search_bar">
        <form  id="searchform" action="[!--news.url--]e/search/index.php" method="post" name="searchform">
          <input class="input" placeholder="���ѵ�ʲô��.." type="text" name="keyboard" id="keyboard">
          <input type="hidden" name="show" value="title" />
          <input type="hidden" name="tempid" value="1" />
          <input type="hidden" name="tbname" value="news">
          <input type="hidden" name="Submit" value="����" />
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
  <div class="pagelist"><a title="Total record">&nbsp;<b>160</b> </a>&nbsp;&nbsp;&nbsp;<b>1</b>&nbsp;<a href="/jstt/index_2.html">2</a>&nbsp;<a href="/jstt/index_3.html">3</a>&nbsp;<a href="/jstt/index_4.html">4</a>&nbsp;<a href="/jstt/index_5.html">5</a>&nbsp;<a href="/jstt/index_6.html">6</a>&nbsp;<a href="/jstt/index_2.html">��һҳ</a>&nbsp;<a href="/jstt/index_14.html">βҳ</a></div>
</article>
<footer>
  <p>Design by <a href="http://www.yangqq.com" target="_blank">��Ҷ����˲���</a> <a href="/">��ICP��88888888��-1</a></p>
</footer>
<a href="#" class="cd-top">Top</a>
</body>
</html>
