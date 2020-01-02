<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/admin/";
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<base href="<%=basePath%>">
	<title>Custom Error Page A Flat Responsive Widget Template  :: w3layouts</title>
	<link href="css/style.css" rel='stylesheet' type='text/css'/>
	<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link href="//fonts.googleapis.com/css?family=Ravi+Prakash" rel="stylesheet">
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Custom Error Page Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</head>
<body>
	<div class="top-bar-agile">
		<div class="logo-agileits">
			<a href="#"><img src="images/logo.png" alt=" " /></a>
		</div>
		<div class="nav-agileinfo">
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Work</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</div>
		<div class="clear"></div>
	</div>
	<div class="content-w3">
		<h1>404</h1>
		<h2>Something went wrong</h2>
		<p>The page you are looking for has been removed,had its name changed or temporarily unavailable</p>
	</div>
	<div class="footer-w3ls">
		<p> &copy; 2016 Custom Error Page. All Rights Reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
	</div>
</body>