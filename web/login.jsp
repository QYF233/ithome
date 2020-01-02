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
        #verify {
            margin-bottom: 20px;
            height: auto;
            width: 100%;
            display: inline-block;
        }

        .label {
            padding: 0em;
            font-weight: normal;
            font-size: 14px;
            color: #555;
        }
    </style>
    <sx:head/>
</head>
<s:i18n name="message">
<body class="user-select">
<div class="container">
    <div class="siteIcon">
        <%--局部刷新--%>
        <div id="headerIco">
            <img src="admin/images/icon/icon.png" id="pic" alt="" data-toggle="tooltip" data-placement="top"
                 title="欢迎使用IT之家后台管理系统" draggable="false"/>
        </div>
    </div>

    <form action="login.action" method="post" autocomplete="off" class="form-signin" onchange="">
        <h2 class="form-signin-heading"><s:text name="loginSubmit"/></h2>

        <s:textfield id="userName" class="form-control" name="user.username" key="username" onchange="showHint(this)"/>

        <s:password id="userPwd" class="form-control" name="user.password" key="userPwd"/>

        <s:textfield id="verify" class="form-control" name="verify" key="verify"/>

        <div style="margin-bottom: 10px;">
            <img border="0" src="admin/verify.jsp" id="verifypic">&nbsp&nbsp&nbsp&nbsp&nbsp
            <s:text name="check"/>:
            <a href="login.action?request_locale=zh_CN"><s:text name="chinese"></s:text></a>
            <a href="login.action?request_locale=en_US"><s:text name="english"></s:text></a>
        </div>

        <script>
            function showHint() {
                const username = $("#userName").val();
                console.log(username + "----");
                $.ajax({
                    type: 'POST',
                    url: 'pic.action',
                    data: {username: username},
                    success: function (request) {
                        $("#headerIco").html(request);
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

        <a href="main.jsp">
            <button class="btn btn-lg btn-primary btn-block" type="submit" id="signinSubmit"><s:text
                    name="loginSubmit"/></button>
        </a>
        <span id="meg"></span>
    </form>

    <div class="footer">
        <p style="float: left"><a href="ithome.action" data-toggle="tooltip" data-placement="left"
                                  title="<s:text name="back.quest"></s:text>?">←<s:text name="back"></s:text> </a></p>

        <p><a href="register.jsp" data-toggle="tooltip" data-placement="left"
              title="<s:text name="register.quest"></s:text>?"><s:text name="register"></s:text> →</a></p>
    </div>

</div>
</s:i18n>


<%
    Object message = request.getAttribute("message");
    if (message != null && !"".equals(message)) {
%>
<script type="text/javascript">
    $("#meg").html("<%=message%>");
</script>
<%} %>
<script src="admin/js/bootstrap.min.js"></script>
<script>
    $('[data-toggle="tooltip"]').tooltip();
    window.oncontextmenu = function () {
        //return false;
    };
    $('.siteIcon img').click(function () {
        window.location.reload();
    });

    $('#signinSubmit').click(function () {

        if ($('#userName').val() === '') {
            $(this).text('用户名不能为空');
        } else if ($('#userPwd').val() === '') {
            $(this).text('密码不能为空');
        } else if ($('#verify').val() === '') {
            $(this).text('请输入验证码');
        } else {
            $(this).text('请稍后...');
        }

    });


</script>
</body>
</html>
