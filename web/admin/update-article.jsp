<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/admin/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="gb2312">
    <base href="<%=basePath%>">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>文章修改 - IT之家后台管理系统</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="apple-touch-icon-precomposed" href="images/icon/icon.png">
    <link rel="shortcut icon" href="images/icon/favicon.ico">
    <script src="js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>

    <script src="https://unpkg.com/wangeditor/release/wangEditor.min.js"></script>

    <script src-=""></script>
    <style>
        .classify-select{
            width: 100%;
            fornt:26px;
        }
    </style>
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
                <li><a href="listComment.action">评论</a></li>
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
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">用户</a>
                    <ul class="dropdown-menu" aria-labelledby="userMenu">
                        <li><a href="#">管理用户组</a></li>
                        <li><a href="AdminServlet?status=List">管理用户</a></li>
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
                <s:iterator value="article" var="article">
                <form action="update.action?id=<s:property value="#article.id" />" method="post"
                      class="add-article-form" enctype="multipart/form-data">
                    <div class="col-md-9">
                        <h1 class="page-header">文章修改</h1>
                        <input type="hidden" name="id"
                               value="<s:property value="#article.id" />"/>

                        <div class="form-group">
                            <h4 style="margin: 15px 0">标题：</h4>
                            <label for="article-title" class="sr-only">标题</label> <input
                                type="text" id="article-title" name="article.title"
                                class="form-control" placeholder="在此处输入标题"
                                value="<s:property value="#article.title" default="标题"/>" required autofocus
                                autocomplete="off">
                        </div>
                        <!-- 作者author -->
                        <div class="form-group">
                            <label for="article-title" class="sr-only">作者</label>
                            <h4 >作者：${session.name}</h4>
                            <input type="text" id="article-author" name="article.author" style="display: none"
                                   class="form-control" value="${session.name}"autofocus
                                   autocomplete="off">
                        </div>

                        <div class="form-group">
                            <script id="content" name="article.content" type="text/plain">
                               ${article.content}
                            </script>
                            <script type="text/javascript">
                                var editor = UE.getEditor('content');
                            </script>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <h1 class="page-header">操作</h1>
                        <div class="add-article-box">
                            <h2 class="add-article-box-title">
                                <span>栏目</span>
                            </h2>
                            <div class="add-article-box-content">

                                <select name="article.classifyid" id="classify" class="classify-select">

                                    <c:forEach items="${classify}" var="classify" >
                                        <option value="${classify.id}" <c:if test="${classify.id eq article.classifyid}">selected</c:if>  name="article.classify">${classify.classify}</option>
                                    </c:forEach>
                                </select>

                                <ul class="category-list">
                                    <c:forEach items="${classify}" var="classify" >
                                        <li>
                                            <label>
                                                <input name="article.classify" type="radio" id="${classify.id}" value="${classify.classify}" <c:if test="${classify.id eq article.classifyid}">checked</c:if>> ${classify.classify}
                                                <em class="hidden-md">( 栏目ID: <span>${classify.id}</span>)</em>
                                            </label>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                        <div class="add-article-box">
                            <h2 class="add-article-box-title">
                                <span>标签</span>
                            </h2>
                            <div class="add-article-box-content">
                                <input type="text" class="form-control" placeholder="输入新标签"
                                       value="<s:property value="#article.tags" />" name="article.tags"
                                       autocomplete="off"> <span class="prompt-text">多个标签请用英文逗号,隔开</span>
                            </div>
                        </div>
                        
                        <div class="add-article-box">
                            <h2 class="add-article-box-title">
                                <span>标题图片</span>
                            </h2>
                            <div class="add-article-box-content" style="text-align: center">
                                <%--展示图片--%>
                                <img alt="" id="preview" src="../images/<s:property value="#article.pic" />" style="width: 240px;height: 180px;object-fit: cover;">
                                <%--pic--%>
                                <input type="" name="article.pic" style="display: none" value="<s:property value="#article.pic" />">
                            </div>
                            <div class="add-article-box-footer">
                                <!-- button class="btn btn-default" type="button" ID="upImage">选择</button> -->
                                <p>
                                    <input type="file" name="upload" size="20" maxlength="80"  onchange="imgPreview(this)" >
                                </p>
                                <!-- 上传图片 -->
                            </div>
                            <script type="text/javascript">
                                function imgPreview(fileDom){
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
                                        return false;
                                    }
                                    var fileSize = file.size;
                                    var size = fileSize / 1024;
                                    if(size>2000){
                                        alert("图片不能大于1M");
                                        target.value="";
                                        return false;
                                    }else{

                                        //读取完成
                                        reader.onload = function(e) {
                                            //获取图片dom
                                            var img = document.getElementById("preview");
                                            //图片路径设置为读取的图片
                                            img.src = e.target.result;
                                        };
                                        reader.readAsDataURL(file);
                                    }

                                }
                            </script>
                        </div>

                        <%
                            Date date = new Date();
                            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                            String s = df.format(date);
                        %>
                        <div class="add-article-box">
                            <h2 class="add-article-box-title">
                                <span>发布</span>
                            </h2>
                            <div class="add-article-box-content">
                                <p>
                                    <label>状态：</label><span class="article-status-display">已发布</span>
                                </p>
                                <p>
                                    <label>公开度：</label><input type="radio" name="visibility"
                                                              value="0" checked/>公开 <input type="radio"
                                                                                           name="visibility"
                                                                                           value="1"/>加密
                                </p>
                                <p>
                                    <label>发布于：</label><span class="article-time-display"><input
                                        style="border: none;" type="text" name="article.time" value="<%=s%>"/></span>
                                </p>
                            </div>
                            <div class="add-article-box-footer">
                                <button class="btn btn-primary" type="submit" name="submit">更新</button>
                            </div>
                        </div>
                    </div>
                </form>
                </s:iterator>
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
                        <tr></tr>
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
<script type="text/javascript">
    var editor = UE.getEditor('article-content');
    window.onresize = function () {
        window.location.reload();
    }
    var _uploadEditor;
    $(function () {
        //重新实例化一个编辑器，防止在上面的editor编辑器中显示上传的图片或者文件
        _uploadEditor = UE.getEditor('uploadEditor');
        _uploadEditor.ready(function () {
            //设置编辑器不可用
            //_uploadEditor.setDisabled();
            //隐藏编辑器，因为不会用到这个编辑器实例，所以要隐藏
            _uploadEditor.hide();
            //侦听图片上传
            _uploadEditor.addListener('beforeInsertImage',
                function (t, arg) {
                    //将地址赋值给相应的input,只去第一张图片的路径
                    $("#pictureUpload").attr("value", arg[0].src);
                    //图片预览
                    //$("#imgPreview").attr("src", arg[0].src);
                })
            //侦听文件上传，取上传文件列表中第一个上传的文件的路径
            _uploadEditor.addListener('afterUpfile', function (t, arg) {
                $("#fileUpload").attr("value",
                    _uploadEditor.options.filePath + arg[0].url);
            })
        });
    });
    //弹出图片上传的对话框
    $('#upImage').click(function () {
        var myImage = _uploadEditor.getDialog("insertimage");
        myImage.open();
    });

    //弹出文件上传的对话框
    function upFiles() {
        var myFiles = _uploadEditor.getDialog("attachment");
        myFiles.open();
    }
</script>
</body>
</html>