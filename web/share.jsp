<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<!doctype html>
<html>
<head>
<meta charset="gbk">
<title>��ҳ_IT֮�� - һ��վ��webǰ�����֮·��Ů����Ա���˲�����վ</title>
<meta name="keywords" content="���˲���,IT֮��,���˲���ģ��,����" />
<meta name="description" content="IT֮�ң���һ��վ��webǰ�����֮·��Ů����Ա������վ���ṩ���˲���ģ�������Դ���صĸ���ԭ����վ��" />
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
    <div class="logo"><a href="#">IT֮��</a></div>
    <h2 id="mnavh"><span class="navicon"></span></h2>
    <ul id="starlist">
      <li><a href="index.jsp">��վ��ҳ</a></li>
      <li><a href="about.jsp">������</a></li>
      <li><a href="share.jsp">ģ�����</a></li>
      <li><a href="list.jsp">�����ռ�</a></li>
      <li class="menu"><a href="fengmian.jsp">ѧ��ֹ��</a>
        <ul class="sub">
          <li><a href="#">������</a></li>
          <li><a href="#">��������</a></li>
        </ul>
      </li>
<%--      <li><a href="info.jsp">������</a></li>--%>
      <li><a href="time.jsp">ʱ����</a></li>
      <li><a href="login.jsp">��¼</a></li>
    </ul>
    <div class="searchbox">
      <div id="search_bar" class="search_bar">
        <form  id="searchform" action="[!--news.url--]e/search/index.php" method="post" name="searchform">
          <input class="input" placeholder="���ѵ�ʲô��.." type="text" name="keyboard" id="keyboard">
          <input type="hidden" name="show" value="title" />
          <input type="hidden" name="tempid" value="1" />
          <input type="hidden" name="tbname" value="news">
          <input type="hidden" name="Submit" value="����" />
          <p class="search_ico"> <span></span></p>
        </form>
      </div>
    </div>
  </nav>
</header>
<article>
  <div class="topbox">
    <ul>
      <li><i><a href="/"><span class="tnum">1</span><span class="tpic"><img src="images/5.jpg"></span><span class="toptext">html5���˲���ģ�塶simple��</span></a></i></li>
      <li><i><a href="/"><span class="tnum">2</span><span class="tpic"><img src="images/mb2.jpg"></span><span class="toptext">html5���˲���ģ�塶simple��</span></a></i></li>
      <li><i><a href="/"><span class="tnum">3</span><span class="tpic"><img src="images/mb3.jpg"></span><span class="toptext">html5���˲���ģ�塶simple��</span></a></i></li>
      <li><i><a href="/"><span class="tnum">4</span><span class="tpic"><img src="images/mb4.jpg"></span><span class="toptext">html5���˲���ģ�塶simple��</span></a></i></li>
    </ul>
  </div>
  <div class="fenlei">
    <ul>
      <li class="flselect"><a href="#top1">�ŵ���˲���</a> </li>
      <li><a href="#top2">С����</a> </li>
      <li><a href="#top3">ʱ�м��</a> </li>
      <li><a href="#top4">�����Ż�</a> </li>
      <li><a href="#top5">����html5</a> </li>
      <li><a href="#top6">PSD���ͼ</a> </li>
    </ul>
  </div>
  <div class="mbans">
    <div class="mban"  style="display: block;" name="top1">
      <ul>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb1.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb2.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb3.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb4.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb5.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb1.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb2.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb3.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb4.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb5.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
      </ul>
    </div>
    <div class="mban" name="top2">
      <ul>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb1.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb4.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb2.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb3.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb5.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
      </ul>
    </div>
    <div class="mban" name="top3">
      <ul>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb2.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb3.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb4.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb5.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb1.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
      </ul>
    </div>
    <div class="mban" name="top4">
      <ul>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb3.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb1.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb2.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb4.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb5.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
      </ul>
    </div>
    <div class="mban" name="top5">
      <ul>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb2.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb1.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb4.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb3.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb5.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
      </ul>
    </div>
    <div class="mban" name="top6">
      <ul>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb5.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb1.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb2.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb3.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
        <li><i><a href="/"><span class="tnum">ԭ��</span><img src="images/mb4.jpg"> <span class="mbtitle">���˲���ģ�塶simple��</span> </a></i></li>
      </ul>
    </div>
  </div>
</article>
<footer>
  <p>Design by <a href="http://www.yangqq.com" target="_blank">IT֮��</a> <a href="/">��ICP��11002373��-1</a></p>
</footer>
<a href="#" class="cd-top">Top</a>
</body>
</html>