<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/admin/";
%>
<%
    request.setCharacterEncoding("utf-8");
%>
<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="gb2312">
    <base href="<%=basePath%>">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <title>写文章 - IT之家后台管理系统</title>

    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="apple-touch-icon-precomposed" href="images/icon/icon.png">
    <link rel="shortcut icon" href="images/icon/favicon.ico">
    <script src="js/jquery-2.1.4.min.js"></script>

    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>

    <%--图片剪裁--%>
    <%--    <link rel="stylesheet" href="css/cropper.css" rel="stylesheet" />--%>
</head>

<body class="user-select">
<section class="container-fluid">
    <header>
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed"
                            data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">切换导航</span> <span class="icon-bar"></span>
                        <span class="icon-bar"></span> <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/">YlsatCMS</a>
                </div>
                <div class="collapse navbar-collapse"
                     id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="">消息 <span class="badge">1</span></a></li>
                        <li class="dropdown"><a class="dropdown-toggle"
                                                data-toggle="dropdown" role="button" aria-haspopup="true"
                                                aria-expanded="false">admin <span class="caret"></span></a>
                            <ul class="dropdown-menu dropdown-menu-left">
                                <li><a title="查看或修改个人信息" data-toggle="modal"
                                       data-target="#seeUserInfo">个人信息</a></li>
                                <li><a title="查看您的登录记录" data-toggle="modal"
                                       data-target="#seeUserLoginlog">登录记录</a></li>
                            </ul>
                        </li>
                        <li><a href="../login.jsp"
                               onClick="if(!confirm('是否确认退出？'))return false;">退出登录</a></li>
                        <li><a data-toggle="modal" data-target="#WeChat">帮助</a></li>
                    </ul>
                    <form action="" method="post" class="navbar-form navbar-right"
                          role="search">
                        <div class="input-group">
                            <input type="text" class="form-control" autocomplete="off"
                                   placeholder="键入关键字搜索" maxlength="15"> <span
                                class="input-group-btn">
									<button class="btn btn-default" type="submit">搜索</button>
								</span>
                        </div>
                    </form>
                </div>
            </div>
        </nav>
    </header>
    <div class="row">
        <aside class="col-sm-3 col-md-2 col-lg-2 sidebar">
            <ul class="nav nav-sidebar">
                <li><a href="../adminIndex.action">首页</a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li class="active"><a href="list.action">文章</a></li>
                <li><a href="notice.jsp">公告</a></li>
                <li><a href="CommentServlet?status=List">评论</a></li>
                <li><a data-toggle="tooltip" data-placement="top"
                       title="网站暂无留言功能">留言</a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a href="../category.jsp">栏目</a></li>
                <li><a class="dropdown-toggle" id="otherMenu"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">其他</a>
                    <ul class="dropdown-menu" aria-labelledby="otherMenu">
                        <li><a href="flink.jsp">友情链接</a></li>
                        <li><a href="loginlog.jsp">访问记录</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a class="dropdown-toggle" id="userMenu"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">账号管理</a>
                    <ul class="dropdown-menu" aria-labelledby="userMenu">
                        <li><a href="#">用户</a></li>
                        <li><a href="AdminServlet?status=List">管理员</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="loginlog.jsp">管理登录日志</a></li>
                    </ul>
                </li>
                <li><a class="dropdown-toggle" id="settingMenu"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">设置</a>
                    <ul class="dropdown-menu" aria-labelledby="settingMenu">
                        <li><a href="setting.jsp">基本设置</a></li>
                        <li><a href="readset.jsp">用户设置</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">安全配置</a></li>
                        <li role="separator" class="divider"></li>
                        <li class="disabled"><a>扩展菜单</a></li>
                    </ul>
                </li>
            </ul>
        </aside>
        <div
                class="col-sm-9 col-sm-offset-3 col-md-10 col-lg-10 col-md-offset-2 main"
                id="main">
            <div class="row">
                <!-- --------------------------------------------------------------------------------- -->
                <form action="add.action" method="post" class="add-article-form" enctype="multipart/form-data">

                    <div class="col-md-9">
                        <h1 class="page-header">撰写新文章</h1>
                        <!-- 标题title -->
                        <div class="form-group">
                            <label for="article-title" class="sr-only">标题</label>
                            <input type="text" id="article-title" name="article.title"
                                   class="form-control" placeholder="在此处输入标题" required autofocus
                                   autocomplete="off">
                        </div>
                        <input type="text" style="display: none" name="article.author" value="${session.name}">
                        <%--在线编辑器--%>
                        <div class="form-group">
                            <script id="content" name="article.content" type="text/plain"></script>
                            <script type="text/javascript">
                                var editor = UE.getEditor('content');
                            </script>
                        </div>


                    </div>
                    <!-- 栏目 -->
                    <div class="col-md-3">
                        <h1 class="page-header">操作</h1>
                        <div class="add-article-box">
                            <h2 class="add-article-box-title">
                                <span>栏目</span>
                            </h2>
                            <div class="add-article-box-content">
                                <select name="article.classifyid" id="classify">
                                    <c:forEach items="${classify}" var="classify">
                                        <option value="${classify.id}">${classify.classify}</option>
                                    </c:forEach>
                                </select>
                                <%--                            <s:select label="classify" name="classify" list="%{#session.classify}" listKey="id" listValue="name" />--%>
                                <ul class="category-list">
                                    <li>
                                        <label>
                                            <input name="article.classify" type="radio" id="1" value="1"> 业界资讯
                                            <em class="hidden-md">( 栏目ID: <span>1</span>)</em>
                                        </label></li>
                                    <li>
                                        <label>
                                            <input name="article.classify" type="radio" id="2" value="2"> 软件分享
                                            <em class="hidden-md">( 栏目ID: <span>2</span>)</em>
                                        </label></li>
                                    <li>
                                        <label>
                                            <input name="article.classify" type="radio" id="3" value="3"> 技术教程
                                            <em class="hidden-md">(栏目ID: <span>3</span> )</em>
                                        </label>
                                    <li>
                                        <label>
                                            <input name="article.classify" type="radio" id="4" value="4"> 测评中心
                                            <em class="hidden-md">(栏目ID: <span>4</span> )</em>
                                        </label>
                                    <li>
                                        <label>
                                            <input name="article.classify" type="radio" id="5" value="5"> 灌水杂谈
                                            <em class="hidden-md">(栏目ID: <span>5</span> )</em>
                                        </label>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <!-- 标签tags -->
                        <div class="add-article-box">
                            <h2 class="add-article-box-title">
                                <span>标签</span>
                            </h2>
                            <div class="add-article-box-content">
                                <input type="text" class="form-control" placeholder="输入新标签"
                                       name="article.tags" autocomplete="off"> <span
                                    class="prompt-text">多个标签请用英文逗号,隔开</span>
                            </div>
                        </div>
                        <div class="add-article-box">
                            <h2 class="add-article-box-title">
                                <span>级联式下拉列表</span>
                            </h2>
                            <div class="add-article-box-content">
                                <form>
                                    <select id="schoolSelect">
                                    </select>
                                    <label id="info"></label>
                                </form>
                            </div>
                            <script type="text/javascript">
                                //数据集
                                var schools = [
                                    {'id': 1, 'name': '南京大学'},
                                    {'id': 2, 'name': '北京大学'},
                                    {'id': 3, 'name': '浙江大学'},
                                    {'id': 4, 'name': '清华大学'},
                                    {'id': 5, 'name': '湖南大学'},
                                ];
                                //页面加载运行，将数据集绑定select，显示默认选中学校
                                $(function () {
                                    bindSelect();
                                    $('#info').text($('#schoolSelect').val());
                                });
                                //将数据集绑定select，重新选择学校后显示选中学校
                                bindSelect = function () {
                                    var $schoolSelect = $('#schoolSelect');
                                    $schoolSelect.change(function () {
                                        $('#info').text($(this).val());
                                    });
                                    if (schools.length > 0) {
                                        for (var i = 0; i < schools.length; i++) {
                                            <%--console.log(<%= manages%>);--%>
                                            var item = schools[i];
                                            if (item.id == 2) {
                                                $schoolSelect.append('<option value="' + item.name + '" selected>' + item.name + '</option>');
                                            } else {
                                                $schoolSelect.append('<option value="' + item.name + '">' + item.name + '</option>');
                                            }
                                        }
                                    }
                                }
                            </script>
                        </div>
                        <!-- 图片pic -->
                        <div class="add-article-box">
                            <h2 class="add-article-box-title">
                                <span>标题图片</span>
                            </h2>
                            <div class="add-article-box-content" style="text-align: center">
                                <img id="preview" src="" width="50%" style="object-fit: cover;">
                            </div>
                            <%--图片过滤--%>
                            <div class="add-article-box-footer">
                                <p>
                                    <input type="file" name="upload" size="20" maxlength="80" id="file"
                                           onchange="imgPreview(this)">
                                </p>
                                <script type="text/javascript">
                                    function imgPreview(fileDom) {
                                        //判断是否支持FileReader
                                        if (window.FileReader) {
                                            var reader = new FileReader();
                                        } else {
                                            alert("您的设备不支持图片预览功能，如需该功能请升级您的设备！");
                                        }

                                        //获取文件
                                        var file = fileDom.files[0];
                                        var imageType = /^image\//;
                                        //是否是图片
                                        if (!imageType.test(file.type)) {
                                            alert("请选择图片！");
                                            return;
                                        }
                                        var fileSize = file.size;
                                        var size = fileSize / 1024;
                                        if (size > 2000) {
                                            alert("图片不能大于1M");
                                            target.value = "";
                                            file.remove();
                                        }
                                        //读取完成
                                        reader.onload = function (e) {
                                            //获取图片dom
                                            var img = document.getElementById("preview");
                                            //图片路径设置为读取的图片
                                            img.src = e.target.result;
                                        };
                                        reader.readAsDataURL(file);
                                    }
                                </script>
                                <!-- 上传图片 -->
                            </div>
                        </div>
                        <div class="add-article-box">
                            <h2 class="add-article-box-title">
                                <span>发布</span>
                            </h2>
                            <div class="add-article-box-content">
                                <p>
                                    <label>状态：</label><span class="article-status-display">未发布</span>
                                </p>
                                <p>
                                    <label>公开度：</label>
                                    <input type="radio" name="visibility" value="0" checked/>公开 <input type="radio" name="visibility" value="1"/>加密
                                </p>
                                <p>
                                    <label>发布于：</label>
                                    <%
                                        Date date = new Date();
                                        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                                        String s = df.format(date);
                                    %>
                                    <span class="article-time-display"> <input
                                            style="border: none;" type="text" name="article.time" value="<%=s%>"/>
											<span></span>
										</span>
                                </p>
                            </div>
                            <div class="add-article-box-footer">
                                <button class="btn btn-primary" type="submit" name="submit">发布</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<!--个人信息模态框-->
<div class="modal fade" id="seeUserInfo" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <form action="" method="post">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title">个人信息</h4>
                </div>
                <div class="modal-body">
                    <table class="table" style="margin-bottom:0px;">
                        <thead>
                        <tr>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td wdith="20%">姓名:</td>
                            <td width="80%"><input type="text" value="王雨"
                                                   class="form-control" name="truename" maxlength="10"
                                                   autocomplete="off"/></td>
                        </tr>
                        <tr>
                            <td wdith="20%">用户名:</td>
                            <td width="80%"><input type="text" value="admin"
                                                   class="form-control" name="username" maxlength="10"
                                                   autocomplete="off"/></td>
                        </tr>
                        <tr>
                            <td wdith="20%">电话:</td>
                            <td width="80%"><input type="text" value="18538078281"
                                                   class="form-control" name="usertel" maxlength="13"
                                                   autocomplete="off"/></td>
                        </tr>
                        <tr>
                            <td wdith="20%">旧密码:</td>
                            <td width="80%"><input type="password"
                                                   class="form-control" name="old_password" maxlength="18"
                                                   autocomplete="off"/></td>
                        </tr>
                        <tr>
                            <td wdith="20%">新密码:</td>
                            <td width="80%"><input type="password"
                                                   class="form-control" name="password" maxlength="18"
                                                   autocomplete="off"/></td>
                        </tr>
                        <tr>
                            <td wdith="20%">确认密码:</td>
                            <td width="80%"><input type="password"
                                                   class="form-control" name="new_password" maxlength="18"
                                                   autocomplete="off"/></td>
                        </tr>
                        </tbody>
                        <tfoot>
                        <tr></tr>
                        </tfoot>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="submit" class="btn btn-primary">提交</button>
                </div>
            </div>
        </form>
    </div>
</div>
<!--个人登录记录模态框-->
<div class="modal fade" id="seeUserLoginlog" tabindex="-1"
     role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">登录记录</h4>
            </div>
            <div class="modal-body">
                <table class="table" style="margin-bottom:0px;">
                    <thead>
                    <tr>
                        <th>登录IP</th>
                        <th>登录时间</th>
                        <th>状态</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>::1:55570</td>
                        <td>2016-01-08 15:50:28</td>
                        <td>成功</td>
                    </tr>
                    <tr>
                        <td>::1:64377</td>
                        <td>2016-01-08 10:27:44</td>
                        <td>成功</td>
                    </tr>
                    <tr>
                        <td>::1:64027</td>
                        <td>2016-01-08 10:19:25</td>
                        <td>成功</td>
                    </tr>
                    <tr>
                        <td>::1:57081</td>
                        <td>2016-01-06 10:35:12</td>
                        <td>成功</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">朕已阅</button>
            </div>
        </div>
    </div>
</div>
<!--微信二维码模态框-->
<div class="modal fade user-select" id="WeChat" tabindex="-1"
     role="dialog" aria-labelledby="WeChatModalLabel">
    <div class="modal-dialog" role="document"
         style="margin-top:120px;max-width:280px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="WeChatModalLabel"
                    style="cursor:default;">微信扫一扫</h4>
            </div>
            <div class="modal-body" style="text-align:center">
                <img src="images/weixin.jpg" alt="" style="cursor:pointer"/>
            </div>
        </div>
    </div>
</div>
<!--提示模态框-->
<div class="modal fade user-select" id="areDeveloping" tabindex="-1"
     role="dialog" aria-labelledby="areDevelopingModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="areDevelopingModalLabel"
                    style="cursor:default;">该功能正在日以继夜的开发中…</h4>
            </div>
            <div class="modal-body">
                <img src="images/baoman/baoman_01.gif" alt="深思熟虑"/>
                <p
                        style="padding:15px 15px 15px 100px; position:absolute; top:15px; cursor:default;">
                    很抱歉，程序猿正在日以继夜的开发此功能，本程序将会在以后的版本中持续完善！</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">朕已阅</button>
            </div>
        </div>
    </div>
</div>
<!--右键菜单列表-->
<div id="rightClickMenu">
    <ul class="list-group rightClickMenuList">
        <li class="list-group-item disabled">欢迎访问异清轩博客</li>
        <li class="list-group-item"><span>IP：</span>172.16.10.129</li>
        <li class="list-group-item"><span>地址：</span>河南省郑州市</li>
        <li class="list-group-item"><span>系统：</span>Windows10</li>
        <li class="list-group-item"><span>浏览器：</span>Chrome47</li>
    </ul>
</div>
<script src="js/bootstrap.min.js"></script>
<script src="js/admin-scripts.js"></script>
<script id="uploadEditor" type="text/plain" style="display:none;"></script>


</body>
</html>
