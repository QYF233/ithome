<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<!doctype html>
<html>
<head>
<meta charset="gbk">
<title>首页_IT之家 - 一个站在web前端设计之路的女技术员个人博客网站</title>
<meta name="keywords" content="个人博客,IT之家,个人博客模板,杨青" />
<meta name="description" content="IT之家，是一个站在web前端设计之路的女程序员个人网站，提供个人博客模板免费资源下载的个人原创网站。" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/base.css" rel="stylesheet">
<link href="css/share.css" rel="stylesheet">
<link href="css/m.css" rel="stylesheet">
<script src="js/jquery.min.js" ></script>
<script src="js/share.js"></script>
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
</head>
<body>
<header class="header-navigation" id="header">
  <nav>
    <div class="logo"><a href="#">IT之家</a></div>
    <h2 id="mnavh"><span class="navicon"></span></h2>
    <ul id="starlist">
      <li><a href="index.jsp">网站首页</a></li>
      <li><a href="about.jsp">关于我</a></li>
      <li><a href="share.jsp">模板分享</a></li>
      <li><a href="list.jsp">博客日记</a></li>
      <li class="menu"><a href="fengmian.jsp">学无止境</a>
        <ul class="sub">
          <li><a href="#">慢生活</a></li>
          <li><a href="#">美文欣赏</a></li>
        </ul>
      </li>
<%--      <li><a href="info.jsp">慢生活</a></li>--%>
      <li><a href="time.jsp">时间轴</a></li>
      <li><a href="login.jsp">登录</a></li>
    </ul>
    <div class="searchbox">
      <div id="search_bar" class="search_bar">
        <form  id="searchform" action="[!--news.url--]e/search/index.php" method="post" name="searchform">
          <input class="input" placeholder="想搜点什么呢.." type="text" name="keyboard" id="keyboard">
          <input type="hidden" name="show" value="title" />
          <input type="hidden" name="tempid" value="1" />
          <input type="hidden" name="tbname" value="news">
          <input type="hidden" name="Submit" value="搜索" />
          <p class="search_ico"> <span></span></p>
        </form>
      </div>
    </div>
  </nav>
</header>
<article>
  <div class="topbox">
    <ul>
      <li><i><a href="/"><span class="tnum">1</span><span class="tpic"><img src="images/5.jpg"></span><span class="toptext">html5个人博客模板《simple》</span></a></i></li>
      <li><i><a href="/"><span class="tnum">2</span><span class="tpic"><img src="images/mb2.jpg"></span><span class="toptext">html5个人博客模板《simple》</span></a></i></li>
      <li><i><a href="/"><span class="tnum">3</span><span class="tpic"><img src="images/mb3.jpg"></span><span class="toptext">html5个人博客模板《simple》</span></a></i></li>
      <li><i><a href="/"><span class="tnum">4</span><span class="tpic"><img src="images/mb4.jpg"></span><span class="toptext">html5个人博客模板《simple》</span></a></i></li>
    </ul>
  </div>
  <div class="fenlei">
    <ul>
      <li class="flselect"><a href="#top1">古典个人博客</a> </li>
      <li><a href="#top2">小清新</a> </li>
      <li><a href="#top3">时尚简洁</a> </li>
      <li><a href="#top4">技术门户</a> </li>
      <li><a href="#top5">国外html5</a> </li>
      <li><a href="#top6">PSD设计图</a> </li>
    </ul>
  </div>
  <div class="mbans">
    <div class="mban"  style="display: block;" name="top1">
      <ul>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb1.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb2.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb3.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb4.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb5.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb1.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb2.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb3.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb4.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb5.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
      </ul>
    </div>
    <div class="mban" name="top2">
      <ul>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb1.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb4.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb2.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb3.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb5.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
      </ul>
    </div>
    <div class="mban" name="top3">
      <ul>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb2.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb3.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb4.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb5.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb1.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
      </ul>
    </div>
    <div class="mban" name="top4">
      <ul>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb3.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb1.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb2.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb4.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb5.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
      </ul>
    </div>
    <div class="mban" name="top5">
      <ul>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb2.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb1.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb4.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb3.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb5.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
      </ul>
    </div>
    <div class="mban" name="top6">
      <ul>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb5.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb1.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb2.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb3.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">原创</span><img src="images/mb4.jpg"> <span class="mbtitle">个人博客模板《simple》</span> </a></i></li>
      </ul>
    </div>
  </div>
</article>
<footer>
  <p>Design by <a href="http://www.yangqq.com" target="_blank">IT之家</a> <a href="/">蜀ICP备11002373号-1</a></p>
</footer>
<a href="#" class="cd-top">Top</a>
</body>
</html>
