<%--
  Created by IntelliJ IDEA.
  User: kiko
  Date: 2019/12/1
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");

%>
<h1>
   <%
   String name = request.getParameter("name");
   %>
    <%=name%>
</h1>
<div>
    <a href="admin/exit.jsp"><h2>退出登录：</h2></a>
</div>
</body>
</html>
