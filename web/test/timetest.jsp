<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>div标签</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">	
		<sx:head/>
	</head>
	<body>
<%--<s:url action="pic.action"> 指定请求地址--%>
<%--	<s:param name="pic" value="123"></s:param> 指定参数--%>
<%--</s:url>--%>


<!--action是action的名字，为url添加参数使用param标签-->

<s:url var="urlName" action="pic.action">
<%--	<s:param name="username" value="${pic}"/>--%>
</s:url>

<!--指定命名空间后，生成的url会使用相对路径，具体的看我的结果-->
<s:url var="url" action="pic.action" namespace="/admin">
	<s:param name="id" value="123"/>
</s:url>

<sx:div id="div1" cssStyle="border:1px solid red;"
		updateFreq="5000"
		href="%{time}">
	初始的内容。
</sx:div>

结果如下
<a href="user/mainPage?id=123">url</a>

<!--使用上面定义的url-->
<s:a href="%{urlName}">测试连接</s:a>

	</body>
</html>
