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
  <h1>�û������ߣ�</h1>
  <body>
  <%     //�Ƴ���session��ʱ���������ˡ������¼���valueUnbound��������
	  session.removeAttribute("logonuser");
      session.removeAttribute("admin");
      session.removeAttribute("name");
      session.removeAttribute("username");
   %> 
<%--   <p>ͣ��ʱ��<%=session.getAttribute("times") %></p>--%>
<%--  <p><%=session.getAttribute("username") %></p>--%>
  <p></p>
  <script>

      setTimeout(function(){//�������ת
      location.href = "../ithome.action";//PC��ҳʽ��ת
      },2000);


  </script>
  </body>
</html>
