<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>My JSP 'exit.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  <h1>用户已下线！</h1>
  <body>
  <%     //移除【session】时，就启动了【监听事件的valueUnbound方法】。
	  session.removeAttribute("logonuser");
      session.removeAttribute("admin");
      session.removeAttribute("name");
      session.removeAttribute("username");
   %> 
<%--   <p>停留时间<%=session.getAttribute("times") %></p>--%>
<%--  <p><%=session.getAttribute("username") %></p>--%>
  <p></p>
  <script>

      setTimeout(function(){//两秒后跳转
      location.href = "../ithome.action";//PC网页式跳转
      },2000);


  </script>
  </body>
</html>
