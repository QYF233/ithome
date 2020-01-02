<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html>
<head>
    <meta charset="gbk">
    <title>IT之家</title>
    <base href="<%=basePath%>">
    <link rel="shortcut icon" href="admin/images/icon/d.ico">
    <meta name="keywords" content="IT之家,求琰锋个人博客,分享IT技术"/>
    <meta name="description" content="IT之家，是一个站在web前端设计之路的程序员个人网站，IT之家,IT科技门户网站。快速精选IT新闻,实时报道科技周边。"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/base.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link href="css/m.css" rel="stylesheet">
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.easyfader.min.js"></script>
    <script src="js/hc-sticky.js"></script>
    <script src="js/comm.js"></script>
    <script src="js/scrollReveal.js"></script>
    <!--[if lt IE 9]>
    <script src="js/modernizr.js"></script>
    <![endif]-->
    <style>
        #HeadPic {
            width: 40px;
            border-radius: 50%;
            display: inline-block;
            height: 100%;
            box-sizing: border-box;
            vertical-align: middle;
            margin-top: -5px;
            margin-right: 5px;
        }
    </style>
</head>
<%
    request.setCharacterEncoding("utf-8");

%>
<body onload="showHint();">
<header class="header-navigation" id="header">
    <nav>
        <div class="logo"><a href="#">IT之家</a></div>
        <h2 id="mnavh"><span class="navicon"></span></h2>
        <ul id="starlist">
            <li><a href="ithome.action">网站首页</a></li>
            <li><a href="about.jsp">关于我</a></li>
            <li><a href="admin/email">发邮件</a></li>
            <li><a href="list.jsp">博客日记</a></li>
            <li class="menu"><a href="fengmian.jsp">学无止境</a>
                <ul class="sub">
                    <li><a href="info.jsp?id=1">慢生活</a></li>
                    <li><a href="#">美文欣赏</a></li>
                </ul>
            </li>
            <li><a href="time.jsp">时间轴</a></li>
            <c:if test="${name==null}">
                <li><a href="login.jsp">登录</a></li>
            </c:if>
            <c:if test="${name!=null}">
                <li><a href="user.jsp?name=${name}"><img id="HeadPic" src="images/touxiang.jpg"
                                                         alt="头像"><span>${name}</span></a></li>
            </c:if>
            <input type="text" id="userName" style="display: none" value="${name}">
        </ul>
        <script>
            /*function showHint() {
                const username = $("#userName").val();
                $.ajax({
                    type: 'POST',
                    url: '<!%=basePath%>admin/LoginServlet?status=Pic',
                    data: "&username=" + username,
                    success: function (result) {
                        $("#HeadPic").attr('src', "images/head/" + result);
                        console.log(result);
                    },
                    error: function () {
                        console.log('请求失败~');
                    }
                });
            }*/
            function showHint() {
                const username = $("#userName").val();
                $.ajax({
                    type: 'POST',
                    url: 'headPic.action',
                    data: {username: username},
                    success: function (request) {
                        $("#HeadPic").attr("src","images/head/"+ request);
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
    <!--banner begin-->
    <div class="banner">
        <div id="banner" class="fader">
            <c:forEach items="${list}" var="list" varStatus="status">
                <li class="slide"><a href="info.action?id=${list.id}" target="_blank"><img
                        src="images/${list.pic}"><span class="imginfo">${list.title}</span></a></li>
            </c:forEach>
            <div class="fader_controls">
                <div class="page prev" data-target="prev">&lsaquo;</div>
                <div class="page next" data-target="next">&rsaquo;</div>
                <ul class="pager_list">
                </ul>
            </div>
        </div>
    </div>
    <!--banner end-->
    <div class="toppic">
        <li><a href="/" target="_blank"> <i><img src="images/6.jpg"></i>
            <h2>呦，头还没秃呢！</h2>
            <span>学无止境</span> </a></li>
        <li><a href="/" target="_blank"> <i><img src="images/5.jpg"></i>
            <h2>哟，在写bug呐！</h2>
            <span>学无止境</span> </a></li>
    </div>
    <main>

        <div class="news_box">
            <ul>
                <c:forEach var="list" items="${list}">
                    <li><i><a href="info.action?id=${list.id}"><img src="images/${list.pic}"></a></i>
                        <h3><a href="info.action?id=${list.id}">${list.title}</a></h3>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <div class="pics">
            <ul>
                <c:forEach var="list3" items="${list3}">
                    <li><i><a href="images/${list3.pic}" target="_blank"><img
                            src="images/${list3.pic}"></a></i><span>${list3.title}</span></li>
                </c:forEach>
            </ul>
        </div>

        <div class="blogtab">
            <ul id="blogtab">
                <li class="current">最新文章</li>
                <li><a href="list.jsp">心得笔记</a></li>
                <li><a href="list.jsp">CSS3|Html5</a></li>
                <li><a href="list.jsp">网站建设</a></li>
                <li><a href="list.jsp">文字标签</a></li>
                <li><a href="list.jsp">文字广告</a></li>
            </ul>

            <c:forEach var="list1" items="${list1}">
                <div class="blogs" data-scroll-reveal="enter bottom over 1s">
                    <h3 class="blogtitle"><a href="info.action?id=${list1.id}" target="_blank">${list1.title}</a></h3>
                    <span class="blogpic"><a href="./images/${list1.pic}" title=""><img src="./images/${list1.pic}"
                                                                                        alt=""></a></span>
                    <p class="blogtext"><a href="info.action?id=${list1.id}">${list1.title}</a></p>
                    <div class="bloginfo">
                        <ul>
                            <li class="author"><a href="/">${list1.author}</a></li>
                            <li class="timer">${list1.time}</li>
                            <li class="view"><span>34567</span>已阅读</li>
                            <li class="like">9999</li>
                        </ul>
                    </div>
                </div>
            </c:forEach>
            <div class="blogs" data-scroll-reveal="enter bottom over 1s">
                <h3 class="blogtitle"><a href="/" target="_blank">帝国cms 首页或者列表页 实现图文不同样式调用方法</a></h3>
                <p class="blogtext">如图，要实现上图效果，我采用如下方法：1、首先在数据库模型，增加字段，分别是图片2，图片3。2、增加标签模板，用if，else if
                    来判断，输出。思路已打开，样式调用就可以多样化啦！...</p>
                <div class="bloginfo">
                    <ul>
                        <li class="author"><a href="/">秋叶枫</a></li>
                        <li class="lmname"><a href="/">学无止境</a></li>
                        <li class="timer">2018-5-13</li>
                        <li class="view">4567已阅读</li>
                        <li class="like">9999</li>
                    </ul>
                </div>
            </div>
            <div class="blogs" data-scroll-reveal="enter bottom over 1s">
                <h3 class="blogtitle"><a href="/" target="_blank">别让这些闹心的套路，毁了你的网页设计!</a></h3>
                <span class="bplist"><a href="/" title="">
      <li><img src="images/2.jpg" alt=""></li>
      <li><img src="images/3.jpg" alt=""></li>
      <li><img src="images/4.jpg" alt=""></li>
      </a></span>
                <p class="blogtext">如图，要实现上图效果，我采用如下方法：1、首先在数据库模型，增加字段，分别是图片2，图片3。2、增加标签模板，用if，else if
                    来判断，输出。思路已打开，样式调用就可以多样化啦！... </p>
                <div class="bloginfo">
                    <ul>
                        <li class="author"><a href="/">秋叶枫</a></li>
                        <li class="lmname"><a href="/">学无止境</a></li>
                        <li class="timer">2018-5-13</li>
                        <li class="view"><span>34567</span>已阅读</li>
                        <li class="like">9999</li>
                    </ul>
                </div>
            </div>
            <div class="blogs" data-scroll-reveal="enter bottom over 1s">
                <h3 class="blogtitle"><a href="/" target="_blank">别让这些闹心的套路，毁了你的网页设计!</a></h3>
                <span class="bigpic"><a href="/" title=""><img src="images/5.jpg" alt=""></a></span>
                <p class="blogtext">如图，要实现上图效果，我采用如下方法：1、首先在数据库模型，增加字段，分别是图片2，图片3。2、增加标签模板，用if，else if
                    来判断，输出。思路已打开，样式调用就可以多样化啦！... </p>
                <div class="bloginfo">
                    <ul>
                        <li class="author"><a href="/">秋叶枫</a></li>
                        <li class="lmname"><a href="/">学无止境</a></li>
                        <li class="timer">2018-5-13</li>
                        <li class="view"><span>34567</span>已阅读</li>
                        <li class="like">9999</li>
                    </ul>
                </div>
            </div>

        </div>
    </main>
    <aside class="r_box">
        <div class="about_me">
            <h2>博主简介</h2>
            <ul>
                <i><img src="images/touxiang.jpg"></i>
                <p><b>秋叶枫</b>，一位来自火星的草根程序员。一位来自火星的草根程序员。一位来自火星的草根程序员。</p>
            </ul>
        </div>
        <div class="wdxc">
            <h2>图片精选</h2>
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
        <div class="tuijian">
            <h2 id="tab"><a href="#" class="current">活动公告</a><a href="#">点击排行</a><a href="#">站长推荐</a></h2>
            <div id="content">
                <ul style="display:block;">
                    <c:forEach var="comment" items="${comment}">
                    <li><a href="info.action?id=${comment.articleid}#gbko">${comment.comment}</a></li>
                    </c:forEach>
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
    <p>Design by <a href="http://www.kikoblog.tk" target="_blank">IT之家</a> <a href="/">蜀ICP备11002373号-1</a><a href="/"
                                                                                                              class="links">友情链接</a>
    </p>
</footer>
<a href="#" class="cd-top">Top</a>
</body>
</html>
