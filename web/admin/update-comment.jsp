<%@ page language="java" import="java.sql.*,com.db.DataBaseConnection"
         pageEncoding="gb2312" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/admin/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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
    <title>�����޸� - IT֮�Һ�̨����ϵͳ</title>
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
                        <span class="sr-only">�л�����</span> <span class="icon-bar"></span>
                        <span class="icon-bar"></span> <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/">YlsatCMS</a>
                </div>
                <div class="collapse navbar-collapse"
                     id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="">��Ϣ <span class="badge">1</span></a></li>
                        <li class="dropdown"><a class="dropdown-toggle"
                                                data-toggle="dropdown" role="button" aria-haspopup="true"
                                                aria-expanded="false">admin <span class="caret"></span></a>
                            <ul class="dropdown-menu dropdown-menu-left">
                                <li><a title="�鿴���޸ĸ�����Ϣ" data-toggle="modal"
                                       data-target="#seeUserInfo">������Ϣ</a></li>
                                <li><a title="�鿴���ĵ�¼��¼" data-toggle="modal"
                                       data-target="#seeUserLoginlog">��¼��¼</a></li>
                            </ul>
                        </li>
                        <li><a href="../login.jsp"
                               onClick="if(!confirm('�Ƿ�ȷ���˳���'))return false;">�˳���¼</a></li>
                        <li><a data-toggle="modal" data-target="#WeChat">����</a></li>
                    </ul>
                    <form action="" method="post" class="navbar-form navbar-right"
                          role="search">
                        <div class="input-group">
                            <input type="text" class="form-control" autocomplete="off"
                                   placeholder="����ؼ�������" maxlength="15"> <span
                                class="input-group-btn">
									<button class="btn btn-default" type="submit">����</button>
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
                <li><a href="../adminIndex.action">��ҳ</a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li class="active"><a href="list.action">����</a></li>
                <li><a href="notice.jsp">����</a></li>
                <li><a href="listComment.action">����</a></li>
                <li><a data-toggle="tooltip" data-placement="top"
                       title="��վ�������Թ���">����</a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a href="category.jsp">��Ŀ</a></li>
                <li><a class="dropdown-toggle" id="otherMenu"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">����</a>
                    <ul class="dropdown-menu" aria-labelledby="otherMenu">
                        <li><a href="flink.jsp">��������</a></li>
                        <li><a href="loginlog.jsp">���ʼ�¼</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a class="dropdown-toggle" id="userMenu"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">�û�</a>
                    <ul class="dropdown-menu" aria-labelledby="userMenu">
                        <li><a href="#">�����û���</a></li>
                        <li><a href="AdminServlet?status=List">�����û�</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="loginlog.jsp">�����¼��־</a></li>
                    </ul>
                </li>
                <li><a class="dropdown-toggle" id="settingMenu"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">����</a>
                    <ul class="dropdown-menu" aria-labelledby="settingMenu">
                        <li><a href="setting.jsp">��������</a></li>
                        <li><a href="readset.jsp">�û�����</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">��ȫ����</a></li>
                        <li role="separator" class="divider"></li>
                        <li class="disabled"><a>��չ�˵�</a></li>
                    </ul>
                </li>
            </ul>
        </aside>

        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-lg-10 col-md-offset-2 main" id="main">
            <div class="row">
                <form action="updateComment.action?id=${comment.id}" method="post"
                      class="add-article-form">
                    <div class="col-md-12">
                        <h1 class="page-header">�����޸�</h1>
                        <input type="hidden" name="comment.articleid"
                               value="${comment.articleid}"/>
                        <!-- ����author -->
                        <div class="form-group">
                            <h4 >���ߣ�${comment.reviewer}</h4>
                            <input type="text" id="article-author" name="comment.reviewer" style="display: none"
                                   class="form-control" value="${comment.reviewer}" autofocus
                                   autocomplete="off">
                        </div>
                        <div class="form-group">
                            <textarea name="comment.comment" id="comment" cols="30" rows="10">
                                ${comment.comment}
                            </textarea>
                        </div>
                    </div>
                        <%
                            Date date = new Date();
                            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                            String s = df.format(date);
                        %>
                    <input type="hidden" name="comment.time"
                           value="<%=s%>"/>
                            <div class="add-article-box-footer">
                                <button class="btn btn-primary" type="submit" name="submit">����</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<!--������Ϣģ̬��-->
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
                    <h4 class="modal-title">������Ϣ</h4>
                </div>
                <div class="modal-body">
                    <table class="table" style="margin-bottom:0px;">
                        <thead>
                        <tr></tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td wdith="20%">����:</td>
                            <td width="80%"><input type="text" value="����"
                                                   class="form-control" name="truename" maxlength="10"
                                                   autocomplete="off"/></td>
                        </tr>
                        <tr>
                            <td wdith="20%">�û���:</td>
                            <td width="80%"><input type="text" value="admin"
                                                   class="form-control" name="username" maxlength="10"
                                                   autocomplete="off"/></td>
                        </tr>
                        <tr>
                            <td wdith="20%">�绰:</td>
                            <td width="80%"><input type="text" value="18538078281"
                                                   class="form-control" name="usertel" maxlength="13"
                                                   autocomplete="off"/></td>
                        </tr>
                        <tr>
                            <td wdith="20%">������:</td>
                            <td width="80%"><input type="password"
                                                   class="form-control" name="old_password" maxlength="18"
                                                   autocomplete="off"/></td>
                        </tr>
                        <tr>
                            <td wdith="20%">������:</td>
                            <td width="80%"><input type="password"
                                                   class="form-control" name="password" maxlength="18"
                                                   autocomplete="off"/></td>
                        </tr>
                        <tr>
                            <td wdith="20%">ȷ������:</td>
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
                    <button type="button" class="btn btn-default" data-dismiss="modal">ȡ��</button>
                    <button type="submit" class="btn btn-primary">�ύ</button>
                </div>
            </div>
        </form>
    </div>
</div>
<!--���˵�¼��¼ģ̬��-->
<div class="modal fade" id="seeUserLoginlog" tabindex="-1"
     role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">��¼��¼</h4>
            </div>
            <div class="modal-body">
                <table class="table" style="margin-bottom:0px;">
                    <thead>
                    <tr>
                        <th>��¼IP</th>
                        <th>��¼ʱ��</th>
                        <th>״̬</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>::1:55570</td>
                        <td>2016-01-08 15:50:28</td>
                        <td>�ɹ�</td>
                    </tr>
                    <tr>
                        <td>::1:64377</td>
                        <td>2016-01-08 10:27:44</td>
                        <td>�ɹ�</td>
                    </tr>
                    <tr>
                        <td>::1:64027</td>
                        <td>2016-01-08 10:19:25</td>
                        <td>�ɹ�</td>
                    </tr>
                    <tr>
                        <td>::1:57081</td>
                        <td>2016-01-06 10:35:12</td>
                        <td>�ɹ�</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">������</button>
            </div>
        </div>
    </div>
</div>
<!--΢�Ŷ�ά��ģ̬��-->
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
                    style="cursor:default;">΢��ɨһɨ</h4>
            </div>
            <div class="modal-body" style="text-align:center">
                <img src="images/weixin.jpg" alt="" style="cursor:pointer"/>
            </div>
        </div>
    </div>
</div>
<!--��ʾģ̬��-->
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
                    style="cursor:default;">�ù����������Լ�ҹ�Ŀ����С�</h4>
            </div>
            <div class="modal-body">
                <img src="images/baoman/baoman_01.gif" alt="��˼����"/>
                <p
                        style="padding:15px 15px 15px 100px; position:absolute; top:15px; cursor:default;">
                    �ܱ�Ǹ������Գ�������Լ�ҹ�Ŀ����˹��ܣ������򽫻����Ժ�İ汾�г������ƣ�</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">������</button>
            </div>
        </div>
    </div>
</div>
<!--�Ҽ��˵��б�-->
<div id="rightClickMenu">
    <ul class="list-group rightClickMenuList">
        <li class="list-group-item disabled">��ӭ��������������</li>
        <li class="list-group-item"><span>IP��</span>172.16.10.129</li>
        <li class="list-group-item"><span>��ַ��</span>����ʡ֣����</li>
        <li class="list-group-item"><span>ϵͳ��</span>Windows10</li>
        <li class="list-group-item"><span>�������</span>Chrome47</li>
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
        //����ʵ����һ���༭������ֹ�������editor�༭������ʾ�ϴ���ͼƬ�����ļ�
        _uploadEditor = UE.getEditor('uploadEditor');
        _uploadEditor.ready(function () {
            //���ñ༭��������
            //_uploadEditor.setDisabled();
            //���ر༭������Ϊ�����õ�����༭��ʵ��������Ҫ����
            _uploadEditor.hide();
            //����ͼƬ�ϴ�
            _uploadEditor.addListener('beforeInsertImage',
                function (t, arg) {
                    //����ַ��ֵ����Ӧ��input,ֻȥ��һ��ͼƬ��·��
                    $("#pictureUpload").attr("value", arg[0].src);
                    //ͼƬԤ��
                    //$("#imgPreview").attr("src", arg[0].src);
                })
            //�����ļ��ϴ���ȡ�ϴ��ļ��б��е�һ���ϴ����ļ���·��
            _uploadEditor.addListener('afterUpfile', function (t, arg) {
                $("#fileUpload").attr("value",
                    _uploadEditor.options.filePath + arg[0].url);
            })
        });
    });
    //����ͼƬ�ϴ��ĶԻ���
    $('#upImage').click(function () {
        var myImage = _uploadEditor.getDialog("insertimage");
        myImage.open();
    });

    //�����ļ��ϴ��ĶԻ���
    function upFiles() {
        var myFiles = _uploadEditor.getDialog("attachment");
        myFiles.open();
    }
</script>
</body>
</html>