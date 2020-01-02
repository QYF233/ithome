<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
	</head>
	<body>
		<%
			long currentTime = System.currentTimeMillis(); //获取当前时间
			//获取开始时间
			Long startTime = (Long) session.getAttribute("startTime"); 
			if (startTime == null) { //第一次访问
				startTime = currentTime;
				session.setAttribute("startTime", startTime);
			}
			long usedTime = (currentTime - startTime) / 1000; //以秒计算的已用时间
			 //每半个小时稍微休息一下（但刚开始不休息）
			if (usedTime % 120 <60 && usedTime > 60) {
				request.setAttribute("rest", true);
			} else {
				request.setAttribute("rest", false);
			}
			request.setAttribute("uTime",usedTime);
		%>
		<s:if test="#request.rest==true">
			你该稍微休息一下了。
		</s:if>
		<s:else>
			你已经访问的时间：<s:property value="#request.uTime" />秒。<br>
		</s:else>
	</body>
</html>