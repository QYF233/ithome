<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    request.setCharacterEncoding("utf-8");
    String name = (String) session.getAttribute("name");
%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>首页_IT之家 - 一个站在web前端设计之路的女技术员个人博客网站</title>
    <base href="<%=basePath%>">
    <meta name="keywords" content="个人博客,IT之家,个人博客模板,秋叶枫"/>
    <meta name="description" content="IT之家，是一个站在web前端设计之路的女程序员个人网站，提供个人博客模板免费资源下载的个人原创网站。"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/base.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link href="css/info.css" rel="stylesheet">
    <link href="css/m.css" rel="stylesheet">
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.easyfader.min.js"></script>
    <script src="js/hc-sticky.js"></script>
    <script src="js/comm.js"></script>
    <script src="js/scrollReveal.js"></script>
    <!--[if lt IE 9]>
    <script src="js/modernizr.js"></script>

    <![endif]-->
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>
    <script src="https://unpkg.com/wangeditor/release/wangEditor.min.js"></script>
    <style>
        .btn {
            margin-top: 20px;
            float: right;
            background-color: #3399CC;
            display: inline-block;
            padding: 6px 12px;
            margin-bottom: 0;
            color: #FFFFFF;
            font-size: 14px;
            font-weight: 400;
            line-height: 1.42857143;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            touch-action: manipulation;
            cursor: pointer;
            user-select: none;
            background-image: none;
            border: 1px solid transparent;
            border-radius: 4px;
        }
        .common-textarea{
            background-image: url(https://view.moezx.cc/images/2018/03/24/comment-bg.png);
            background-size: contain;
            background-repeat: no-repeat;
            background-position: right;
            background-color: rgba(255,255,255,0);
            resize: vertical;
            display: block;
            float: none;
            width: 90%;
            height: 150px;
            margin-top: 20px;
            margin-bottom: 10px;
            color: #535a63;
            border: 1px solid #ddd;
            font-size: 14px;
            padding: 21px 21px 20px;
            border-radius: 3px;
            outline:none;
        }
    </style>
</head>

<body>

<header class="header-navigation" id="header">
    <nav>
        <div class="logo"><a href="ithome.action">IT之家</a></div>
        <h2 id="mnavh"><span class="navicon"></span></h2>
        <ul id="starlist">
            <li><a href="ithome.action">网站首页</a></li>
            <li><a href="about.jsp">关于我</a></li>
            <li><a href="share.jsp">模板分享</a></li>
            <li><a href="list.jsp">博客日记</a></li>
            <li class="menu"><a href="fengmian.jsp">学无止境</a>
                <ul class="sub">
                    <li><a href="#">慢生活</a></li>
                    <li><a href="#">美文欣赏</a></li>
                </ul>
            </li>
            <li><a href="time.jsp">时间轴</a></li>
            <li><a href="login.jsp">登录</a></li>
        </ul>
        <div class="searchbox">
            <div id="search_bar" class="search_bar">
                <form id="searchform" action="[!--news.url--]e/search/index.php" method="post" name="searchform">
                    <input class="input" placeholder="想搜点什么呢.." type="text" name="keyboard" id="keyboard">
                    <input type="hidden" name="show" value="title"/>
                    <input type="hidden" name="tempid" value="1"/>
                    <input type="hidden" name="tbname" value="news">
                    <input type="hidden" name="Submit" value="搜索"/>
                    <p class="search_ico"><span></span></p>
                </form>
            </div>
        </div>
    </nav>
</header>
<article>
    <main>
        <div class="infosbox">
            <div class="newsview">
                <h3 class="news_title">${article.title}
                </h3>
                <div class="bloginfo">
                    <ul>
                        <li class="author">作者：<a href="/">${article.author}
                        </a></li>
                        <li class="lmname"><a href="/">${article.classify}
                        </a></li>
                        <li class="timer">时间：${article.time}
                        </li>
                        <li class="view">4567人已阅读</li>
                    </ul>
                </div>
                <div class="tags"><a href="/" target="_blank">个人博客</a> &nbsp; <a href="/"
                                                                                 target="_blank">${article.tags}
                </a></div>
                <div class="news_about"><strong>简介</strong>个人博客，用来做什么？我刚开始就把它当做一个我吐槽心情的地方，也就相当于一个网络记事本，写上一些关于自己生活工作中的小情小事，也会放上一些照片，音乐。每天工作回家后就能访问自己的网站，一边听着音乐，一边写写文章。
                </div>
                <div class="news_con">
                    <img src="<%=basePath%>/images/${article.pic}" alt="">
                    ${article.content}
                </div>
                <div class="share">
                    <p class="diggit"><a
                            href="JavaScript:makeRequest('/e/public/digg/?classid=3&amp;id=19&amp;dotop=1&amp;doajax=1&amp;ajaxarea=diggnum','EchoReturnedText','GET','');">
                        很赞哦！ </a>(<b id="diggnum">
                        <script type="text/javascript" src="/e/public/ViewClick/?classid=2&id=20&down=5"></script>
                        13</b>)
                    </p>
                </div>
                <div class="nextinfo">
                    <p>上一篇：<a href="/news/life/2018-03-13/804.html">作为一个设计师,如果遭到质疑你是否能恪守自己的原则?</a></p>
                    <p>下一篇：<a href="/news/life/">返回列表</a></p>
                </div>
                <form action="addComment.action" method="post" class="add-comment-form">
                    <div class="news_pl">
                        <h2>文章评论</h2>
                        <ul>
                            <c:forEach items="${comment}" var="comment">
                                <div class="gbko" id="gbko">

                                    <div class="blogs" data-scroll-reveal="enter bottom over 1s">
<%--                                                            <span class="blogpic"><a href="/" title=""><img src="./images/1.jpg" alt="头像"></a></span>--%>
                                        <p class="blogtext" name="comm" id="comm">${comment.comment}
                                        </p>
                                        <div class="bloginfo">
                                            <ul>
                                                <li class="author">评论者:${comment.reviewer}</li>
                                                <li class="lmname"><a href="info.action?id=${article.id}">文章名:${comment.title}</a></li>
                                                <li class="timer">评论时间:${comment.time}</li>
                                                <li class="view"><span>34567</span>已阅读</li>
                                                <li class="like">9999</li>
                                            </ul>
                                        </div>
                                    </div>
                            </c:forEach>

                                <input type="text" name="comment.articleid" style="display: none" value="${article.id}">
                                <input type="text" name="comment.title" style="display: none" value="${article.title}">
                                    <input type="text" name="comment.reviewer" style="display: none" value="<%= name %>">
                                    <input type="text" name="reviewerNull" style="display: none" value="游客">
                                    <textarea placeholder="你是我一生只会遇见一次的惊喜 ..." name="newcomment" class="common-textarea" id="newcomment" rows="5" tabindex="4"></textarea>
                            </div>
                            <button class="btn btn-primary" type="submit" name="submit">提交</button>
                        </ul>
                    </div>
                </form>
            </div>
    </main>
    <aside class="r_box">
        <div class="wdxc">
            <h2>图文精选</h2>
            <ul>
                <li><a href="/"><img src="images/7.jpg"></a></li>
                <li><a href="/"><img src="images/8.jpg"></a></li>
                <li><a href="/"><img src="images/9.jpg"></a></li>
                <li><a href="/"><img src="images/10.jpg"></a></li>
                <li><a href="/"><img src="images/11.jpg"></a></li>
                <li><a href="/"><img src="images/12.jpg"></a></li>
            </ul>
        </div>
        <div class="fenlei">
            <h2>文章分类</h2>
            <ul>
                <li><a href="/">学无止境（33）</a></li>
                <li><a href="/">日记（19）</a></li>
                <li><a href="/">慢生活（520）</a></li>
                <li><a href="/">美文欣赏（40）</a></li>
            </ul>
        </div>
        <div class="cloud">
            <h2>标签云</h2>
            <ul>
                <a href="/">陌上花开</a> <a href="/">校园生活</a> <a href="/">html5</a> <a href="/">SumSung</a> <a
                    href="/">青春</a> <a href="/">温暖</a> <a href="/">阳光</a> <a href="/">三星</a><a href="/">索尼</a> <a
                    href="/">华维荣耀</a> <a href="/">三星</a> <a href="/">索尼</a>
            </ul>
        </div>
        <div class="tuijian">
            <h2 id="tab"><a href="#" class="current">点击排行</a><a href="#">站长推荐</a></h2>
            <div id="content">
                <ul style="display:block;">
                    <li><a href="/">第二届 优秀个人博客模板比赛参选活动</a></li>
                    <li><a href="/">【活动作品】柠檬绿兔小白个人博客模板</a></li>
                    <li><a href="/">帝国cms 列表页调用子栏目，没有则不显示栏目名称</a></li>
                    <li><a href="/">2014年度优秀个人博客评选活动</a></li>
                    <li><a href="/">你是什么人便会遇上什么人</a></li>
                    <li><a href="/">帝国cms 列表页调用子栏目，没有则不显示栏目名称</a></li>
                    <li><a href="/">第二届 优秀个人博客模板比赛参选活动</a></li>
                    <li><a href="/">个人博客模板《绅士》后台管理</a></li>
                </ul>
                <ul>
                    <li><a href="/">个人博客，我为什么要用帝国cms？</a></li>
                    <li><a href="/">D设计师博客-一个热爱生活的设计师</a></li>
                    <li><a href="/">东轩博客，我看到了你的坚持！</a></li>
                    <li><a href="/">程序员创业，就得“豁得出去”！</a></li>
                    <li><a href="/">张建华 一个90后年轻站长！我们是对手亦是朋友！</a></li>
                    <li><a href="/">《奋斗电商》看知名微商如何做博客引流？</a></li>
                    <li><a href="/">《寻之旅》一个关于旅游，游记的个人博客</a></li>
                    <li><a href="/">【匆匆那些年】总结个人博客经历的这四年</a></li>
                </ul>
            </div>
        </div>
        <div class="guanzhu">
            <h2>关注我 么么哒</h2>
            <ul>
                <img src="images/wx.jpg">
            </ul>
        </div>

    </aside>
</article>
<footer>
    <p>Design by <a href="http://localhost:8080/ithome" target="_blank">IT之家</a> <a href="/">浙ICP备88888888号-1</a></p>
</footer>
<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    UE.getEditor('editor');


    function isFocus(e) {
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e)
    }

    function setblur(e) {
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e)
    }

    function insertHtml() {
        var value = prompt('插入html代码', '');
        UE.getEditor('editor').execCommand('insertHtml', value)
    }

    function createEditor() {
        enableBtn();
        UE.getEditor('editor');
    }

    function getAllHtml() {
        alert(UE.getEditor('editor').getAllHtml())
    }

    function getContent() {
        var arr = [];
        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getContent());
        alert(arr.join("\n"));
    }

    function getPlainTxt() {
        var arr = [];
        arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getPlainTxt());
        alert(arr.join('\n'))
    }

    function setContent(isAppendTo) {
        var arr = [];
        arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
        UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
        alert(arr.join("\n"));
    }

    function setDisabled() {
        UE.getEditor('editor').setDisabled('fullscreen');
        disableBtn("enable");
    }

    function setEnabled() {
        UE.getEditor('editor').setEnabled();
        enableBtn();
    }

    function getText() {
        //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
        var range = UE.getEditor('editor').selection.getRange();
        range.select();
        var txt = UE.getEditor('editor').selection.getText();
        alert(txt)
    }

    function getContentTxt() {
        var arr = [];
        arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
        arr.push("编辑器的纯文本内容为：");
        arr.push(UE.getEditor('editor').getContentTxt());
        alert(arr.join("\n"));
    }

    function hasContent() {
        var arr = [];
        arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
        arr.push("判断结果为：");
        arr.push(UE.getEditor('editor').hasContents());
        alert(arr.join("\n"));
    }

    function setFocus() {
        UE.getEditor('editor').focus();
    }

    function deleteEditor() {
        disableBtn();
        UE.getEditor('editor').destroy();
    }

    function disableBtn(str) {
        var div = document.getElementById('btns');
        var btns = domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            if (btn.id == str) {
                domUtils.removeAttributes(btn, ["disabled"]);
            } else {
                btn.setAttribute("disabled", "true");
            }
        }
    }

    function enableBtn() {
        var div = document.getElementById('btns');
        var btns = domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            domUtils.removeAttributes(btn, ["disabled"]);
        }
    }

    function getLocalData() {
        alert(UE.getEditor('editor').execCommand("getlocaldata"));
    }

    function clearLocalData() {
        UE.getEditor('editor').execCommand("clearlocaldata");
        alert("已清空草稿箱")
    }

</script>
<a href="#" class="cd-top">Top</a>
</body>
</html>
