<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sx" uri="/struts-dojo-tags" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="zh-CN">
<head><!--登录页面  -->
  <meta charset="utf-8">
  <base href="<%=basePath%>">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>IT之家后台管理系统</title>
  <link rel="stylesheet" type="text/css" href="admin/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="admin/css/style.css">
  <link rel="stylesheet" type="text/css" href="admin/css/login.css">
  <link rel="apple-touch-icon-precomposed" href="admin/images/icon/icon.png">
  <link rel="shortcut icon" href="admin/images/icon/favicon.ico">
  <script src="admin/js/jquery-2.1.4.min.js"></script>
  <style type="text/css">
  #email{
  	margin-bottom:20px;
  	height: auto;
   display:inline-block;
  }
    #repwd{
      margin-bottom:10px;
    }
  </style>
  <sx:head/>
</head>

<body class="user-select">
<div class="container">
  <div class="siteIcon"><img src="admin/images/icon/icon.png" id="pic" alt="" data-toggle="tooltip" data-placement="top" title="欢迎使用IT之家后台管理系统" draggable="false" /></div>

  <form action="register.action" method="post" autocomplete="off" class="form-signin" onchange="">
    <h2 class="form-signin-heading">注册</h2>

    <label for="userName" class="sr-only">用户名</label>
    <input type="text" id="userName" name="user.username" class="form-control" placeholder="请输入用户名" required autofocus autocomplete="off" maxlength="10" onchange="showHint(this)">
    <label for="userPwd" class="sr-only">密码</label>
    <input type="password" id="userPwd" name="user.password" class="form-control" placeholder="请输入密码" required autocomplete="off" maxlength="18">
    <label for="userPwd" class="sr-only">确认密码</label>
    <input type="password" id="repwd" name="repwd" class="form-control" placeholder="请重新输入密码" required autocomplete="off" maxlength="18">
    <label for="email" class="sr-only">用户名</label>
    <input type="text" id="email" name="user.email" class="form-control" placeholder="请输入邮箱" required autofocus autocomplete="off" maxlength="18" onchange="showHint(this)">
    <input type="text" name="user.cratetime" class="form-control" value="2019-12-26">

    <span id="message" style="color: red"></span>
    <script>
      function showHint() {
        const username = $("#userName").val();
        console.log(username + "----");
        $.ajax({
          type: 'POST',
          url: 'reg.action',
          data: {username: username},
          success: function (request) {
            $("#message").html(request);
            console.log(request);
          },
          error: function () {
            console.log('请求失败~');
          }
        });
      }

      $('#verifypic').click(function () {
        window.location.reload();
      });
    </script>


    <a href="main.jsp"><button class="btn btn-lg btn-primary btn-block" type="submit" id="signinSubmit">注册</button></a>
    <span id="meg"></span>
  </form>
  <div class="footer">
    <p style="float: left"><a href="ithome.action" data-toggle="tooltip" data-placement="left" title="不知道自己在哪?">←回到前台 </a></p>
    <p><a href="login.jsp" data-toggle="tooltip" data-placement="left" title="不知道自己在哪?">登录 →</a></p>
  </div>
</div>

<script src="admin/js/bootstrap.min.js"></script>
<script>
    $('[data-toggle="tooltip"]').tooltip();
    window.oncontextmenu = function(){
        //return false;
    };
    $('.siteIcon img').click(function(){
        window.location.reload();
    });

    $('#signinSubmit').click(function(){
     // var username = $('#userName').val();
        if($('#userName').val() === ''){
            $(this).text('用户名不能为空');
        }else if($('#userPwd').val() === ''){
            $(this).text('密码不能为空');
        }else if($('#verify').val() === ''){
            $(this).text('请输入验证码');
           } else{
            $(this).text('请稍后...');
        }

    });

</script>
</body>
</html>
