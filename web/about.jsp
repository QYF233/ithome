<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
<!doctype html>
<html>
<head>
    <meta charset="gbk">
    <title>��ҳ_������˲��� - һ��վ��webǰ�����֮·��Ů����Ա���˲�����վ</title>
    <meta name="keywords" content="���˲���,������˲���,���˲���ģ��,����"/>
    <meta name="description" content="������˲��ͣ���һ��վ��webǰ�����֮·��Ů����Ա������վ���ṩ���˲���ģ�������Դ���صĸ���ԭ����վ��"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/base.css" rel="stylesheet">
    <link href="css/about.css" rel="stylesheet">
    <link href="css/m.css" rel="stylesheet">
    <script src="js/jquery.min.js"></script>
    <script src="js/ab.js"></script>
    <!--[if lt IE 9]>
    <script src="js/modernizr.js"></script>
    <![endif]-->
</head>
<body>
<header class="header-navigation" id="header">
    <nav>
        <div class="logo"><a href="ithome.action">IT֮��</a></div>
        <h2 id="mnavh"><span class="navicon"></span></h2>
        <ul id="starlist">
            <li><a href="ithome.action">��վ��ҳ</a></li>
            <li><a href="about.jsp">������</a></li>
            <li><a href="share.jsp">ģ�����</a></li>
            <li><a href="list.jsp">�����ռ�</a></li>
            <li class="menu"><a href="fengmian.jsp">ѧ��ֹ��</a>
                <ul class="sub">
                    <%--          <li><a href="#">������</a></li>--%>
                    <li><a href="#">��������</a></li>
                    <li><a href="login.jsp">��¼</a></li>
                </ul>
            </li>
            <%--      <li><a href="info.jsp">������</a></li>--%>
            <li><a href="time.jsp">ʱ����</a></li>
            <li><a href="login.jsp">��¼</a></li>
        </ul>
        <div class="searchbox">
            <div id="search_bar" class="search_bar">
                <form id="searchform" action="[!--news.url--]e/search/index.php" method="post" name="searchform">
                    <input class="input" placeholder="���ѵ�ʲô��.." type="text" name="keyboard" id="keyboard">
                    <input type="hidden" name="show" value="title"/>
                    <input type="hidden" name="tempid" value="1"/>
                    <input type="hidden" name="tbname" value="news">
                    <input type="hidden" name="Submit" value="����"/>
                    <p class="search_ico"><span></span></p>
                </form>
            </div>
        </div>
    </nav>
</header>
<article>
    <div class="photowall">
        <ul class="wall_a">
            <li><a href="/"><img src="images/1.jpg">
                <figcaption>
                    <h2>������Ϊ���˹��úö����ǣ���û���˿��õ����ʱ�������ܱ��ֽ��� </h2>
                </figcaption>
            </a></li>
            <li>
                <p class="text_b"><a href="/">�ӱ��Լ����ˣ�����ֻ�ܵ����Լ�����ı����������Խ��Խû�а�ȫ�С�</a></p>
            </li>
            <li><a href="/"><img src="images/3.jpg">
                <figcaption>
                    <h2>������Ϊ���˹��úö����ǣ���û���˿��õ����ʱ�������ܱ��ֽ��� </h2>
                </figcaption>
            </a></li>
            <li>
                <p class="text_b"><a href="/">�ӱ��Լ����ˣ�����ֻ�ܵ����Լ�����ı����������Խ��Խû�а�ȫ�С�</a></p>
            </li>
            <li>
                <p class="text_b"><a href="/">�ӱ��Լ����ˣ�����ֻ�ܵ����Լ�����ı����������Խ��Խû�а�ȫ�С�</a></p>
            </li>
            <li><a href="/"><img src="images/5.jpg">
                <figcaption>
                    <h2>������Ϊ���˹��úö����ǣ���û���˿��õ����ʱ�������ܱ��ֽ��� </h2>
                </figcaption>
            </a></li>
            <li>
                <p class="text_b"><a href="/">�ӱ��Լ����ˣ�����ֻ�ܵ����Լ�����ı����������Խ��Խû�а�ȫ�С�</a></p>
            </li>
            <li><a href="/"><img src="images/6.jpg">
                <figcaption>
                    <h2>������Ϊ���˹��úö����ǣ���û���˿��õ����ʱ�������ܱ��ֽ��� </h2>
                </figcaption>
            </a></li>
        </ul>
    </div>
    <div class="abox">
        <h2>�������</h2>
        <div class="biji-content" id="content">
            ���࣬Ů��һ��80��ݸ�Ůվ����09�����С�һֱǱ���о�webǰ�˼�����һ�߹���һ�߻��۾��飬����һЩ���˲���ģ�壬�Լ�SEO�Ż����ĵá��������磬���Ҳ���еĽ��ҡ���㡱��
            SEO�ܶ��˽�������ʱ�䣬���˲�����վ�ٶ�����Ҳ��֮ǰ��30ҳ���ŵ��˵�һҳ���ڼ��кܶ�Ĳ����ף����Ƕ�û�з�������������һ�У��������ϲ��������
        </div>
        <div class="navlist">
            <ul>
                <li class="navcurrent"><a href="#top1">������Ϣ</a></li>
                <li><a href="#top2">��������</a></li>
                <li><a href="#top3">��·����</a></li>
                <li><a href="#top4">�ҵĲ���</a></li>
                <li><a href="#top5">����ռ�</a></li>
            </ul>
        </div>
        <div class="navtab">
            <div class="navitem" style="display: block;" name="top1">
                <div class="content">
                    <p>������dancesmile | ����</p>
                    <p>ְҵ��Webǰ�����ʦ����ҳ��� </p>
                    <p>���䣺dancesmiling@qq.com</p>
                    <p>����΢�ţ�</p>
                    <p><img src="images/grwx.png"></p>

                </div>
            </div>
            <div class="navitem" name="top2">
                <div class="content">
                    <p class="ab_t">�������ܣ�</p>
                    <p>1��webǰ��ҳ��Ŀ���</p>
                    <p>2�����ݲ�Ʒ������Ϻ�˿�����ԱЭ��ʵ��ǰ��ҳ��Ч���͹���</p>
                    <p>3���ܹ������ֻ��˺�Pc��Htmlҳ������</p>
                    <p>4������ʹ��html5��CSS3��javascript����Ϥҳ��ܹ��Ͳ���</p>
                    <p>5������ʹ��Javascript���</p>
                </div>
            </div>
            <div class="navitem" name="top3">
                <div class="content">
                    <p class="ab_t">��·���̣�</p>
                    <p><a href="http://www.yangqq.com/news/life/2018-04-27/816.html"
                          target="_blank">���߽����顿���˲��ͣ������ҵ�С���磡</a></p>
                    <p><a href="http://www.yangqq.com/news/life/2018-06-17/873.html"
                          target="_blank">������ơ���������һ������Ƶ�Ů��</a></p>
                    <p><a href="http://www.yangqq.com/jstt/bj/2015-01-09/740.html"
                          target="_blank">���Ҵ���Щ�꡿�ܽ���˲��;�����������</a></p>
                    <p><a href="http://www.yangqq.com/jstt/bj/2014-11-06/732.html" target="_blank">�����ҵĸ��˲��ͷ������������IP��10��600��</a>
                    </p>
                    <p><a href="http://www.yangqq.com/news/s/2014-01-08/635.html" target="_blank">���˲��ʹӼ򲻷�</a></p>
                    <p><a href="http://www.yangqq.com/jstt/bj/2013-06-18/285.html"
                          target="_blank">������˲�����վ��û�м�ֵ���㻹������</a></p>
                    <p><a href="http://www.yangqq.com/news/life/2013-06-06/68.html" target="_blank">Web֮·������������֮��</a>
                    </p>
                </div>
            </div>
            <div class="navitem" name="top4">
                <div class="content">
                    <p class="ab_t">�ҵĲ��ͣ�</p>
                    <p>�� ����www.yangqq.com ������2011��01��12��&nbsp;</p>
                    <p>�������������Ʒ�����&nbsp;&nbsp;<a
                            href="https://promotion.aliyun.com/ntms/act/ambassador/sharetouser.html?userCode=8smrzoqa&amp;productCode=vm"
                            target="_blank"><span style="color:#FF0000;"><strong>ǰ�������ƹ�������&gt;&gt;</strong></span></a>
                    </p>
                    <p>�����ţ���ICP��11002373��-1</p>
                    <p>�� ��PHP �۹�CMS7.5&nbsp; &nbsp;<u><a href="http://www.yangqq.com/blogs/876.html"
                                                          target="_blank"><span
                            style="color:#000000;">Ϊʲôѡ��۹�cms��</span></a></u></p>
                    <p class="ab_t">΢��ɨ����ͣ�</p>

                    <p><img src="images/weipayimg.jpg"></p>

                </div>
            </div>
            <div class="navitem" name="top5">
                <div class="content">
                    <p class="ab_t">����ռ䣺</p>
                    <p>
                        <a href="https://s.click.taobao.com/t?e=m%3D2%26s%3Dtx5qvgOp2sEcQipKwQzePCperVdZeJviEViQ0P1Vf2kguMN8XjClAv6rqJwbkViRJZyTmHFgi7toyO3ddgEZ98KZ%2FCBiGC%2BAA120cfxpzVcJ9DgiofYXHhmIkXBqRClNTcEU%2BDykfuSM%2BhtH71aX6uIOTs4KMj3yjpOyWSRdiSZDEm2YKA6YIrbIzrZDfgWtwGXLU4WXsy%2FSGTLzgkOZ%2F6tHZYFMpqEnXF%2B87KN7TKeiZ%2BQMlGz6FQ%3D%3D"
                           target="_blank">���Ƽ���������ECS</a></p>
                    <p>
                        <a href="https://s.click.taobao.com/t?e=m%3D2%26s%3DBd7iLbiMBvscQipKwQzePCperVdZeJviEViQ0P1Vf2kguMN8XjClAv6rqJwbkViRlCnp0VPQiKVoyO3ddgEZ98KZ%2FCBiGC%2BAA120cfxpzVe3QAIFZ4qxdxmIkXBqRClNTcEU%2BDykfuSM%2BhtH71aX6uIOTs4KMj3yjpOyWSRdiSZDEm2YKA6YIrbIzrZDfgWtewfOCTsUhuL7A4ojqcFxLlxfvOyje0ynomfkDJRs%2BhU%3D"
                           target="_blank">���Ƽ���������ѧ���ػ��Ʒ�����</a></p>
                    <p>
                        <a href="https://s.click.taobao.com/t?e=m%3D2%26s%3DOU6WqfEvy%2FQcQipKwQzePCperVdZeJviEViQ0P1Vf2kguMN8XjClAv6rqJwbkViRgNciauKrSpxoyO3ddgEZ98KZ%2FCBiGC%2BAA120cfxpzVdiEIb0a5VTxRmIkXBqRClNTcEU%2BDykfuTlSg55GVX5wb6HrfO5Rkxh34mdTsZIUcAD%2Bi4rDfTRpeTIM5d0rdP%2BMLZ4%2BrZ7PWchhQs2DjqgEA%3D%3D"
                           target="_blank">RDS�����ݿ�</a></p>
                    <p>
                        <a href="https://s.click.taobao.com/t?e=m%3D2%26s%3DkOyMRXLe5y0cQipKwQzePCperVdZeJviEViQ0P1Vf2kguMN8XjClAv6rqJwbkViRLZXTD7FAd8hoyO3ddgEZ98KZ%2FCBiGC%2BAA120cfxpzVdeQ9pcQh0ldxmIkXBqRClNTcEU%2BDykfuSM%2BhtH71aX6htm26afTqZhX2AelcDTwouII%2BH4AtnKmf9aAWiTxsBW2YeVZAPpWRfGDF1NzTQoPw%3D%3D"
                           target="_blank">�����ݿ�Redis��</a></p>
                    <p>
                        <a href="https://s.click.taobao.com/t?e=m%3D2%26s%3DNEP6My0TsB0cQipKwQzePCperVdZeJviEViQ0P1Vf2kguMN8XjClAv6rqJwbkViR2Wp0cUyixa5oyO3ddgEZ98KZ%2FCBiGC%2BAA120cfxpzVeG2k2079gAVRmIkXBqRClNTcEU%2BDykfuSM%2BhtH71aX6htm26afTqZhX2AelcDTwouII%2BH4AtnKmf9aAWiTxsBWuCgE0st4OyjGDmntuH4VtA%3D%3D"
                           target="_blank">������DDOS����-�߷�IP</a></p>
                    <p>
                        <a href="https://s.click.taobao.com/t?e=m%3D2%26s%3DxKaTivPOxxscQipKwQzePCperVdZeJviEViQ0P1Vf2kguMN8XjClAv6rqJwbkViRxJn51p0fCRZoyO3ddgEZ98KZ%2FCBiGC%2BAA120cfxpzVe%2FTQ%2BKb31whBmIkXBqRClNTcEU%2BDykfuTlSg55GVX5wVaL%2B82m0QZTEzn0DH69aFtLyrb2g0H2G%2Fwamd%2BEL%2FWmhcLzAjcuTkddow9d%2FMD%2BXQ%3D%3D"
                           target="_blank">�������ƽ���</a></p>
                    <p>
                        <a href="https://s.click.taobao.com/t?e=m%3D2%26s%3DbAEFASZ9ijccQipKwQzePCperVdZeJviEViQ0P1Vf2kguMN8XjClAv6rqJwbkViR4CZyur93miVoyO3ddgEZ98KZ%2FCBiGC%2BAA120cfxpzVfmlqlNq1vcQRmIkXBqRClNTcEU%2BDykfuSM%2BhtH71aX6mMC%2FVYRjeGkg1LZ9gMhib9Lyrb2g0H2G3pD%2Buoa%2BvW2xgxdTc00KD8%3D"
                           target="_blank">�����ƾ�Ʒ��վģ��</a></p>
                    <p>
                        <a href="https://s.click.taobao.com/t?e=m%3D2%26s%3DYFtE9mLmbI8cQipKwQzePCperVdZeJviEViQ0P1Vf2kguMN8XjClAv6rqJwbkViR%2F67zSlRHtIZoyO3ddgEZ98KZ%2FCBiGC%2BAA120cfxpzVdqFcPM5kapBRmIkXBqRClNTcEU%2BDykfuSM%2BhtH71aX6htm26afTqZhX2AelcDTwouII%2BH4AtnKmf9aAWiTxsBWI8xs9INDEPvGJe8N%2FwNpGw%3D%3D"
                           target="_blank">webӦ�÷���ǽ</a></p>
                    <p>
                        <a href="https://s.click.taobao.com/t?e=m%3D2%26s%3DG7ldZyW9ShocQipKwQzePCperVdZeJviEViQ0P1Vf2kguMN8XjClAv6rqJwbkViRVSG%2Bc1h4z9hoyO3ddgEZ98KZ%2FCBiGC%2BAA120cfxpzVf0SX%2FX7ryxfhmIkXBqRClNTcEU%2BDykfuSM%2BhtH71aX6htm26afTqZhX2AelcDTwouII%2BH4AtnKmf9aAWiTxsBWC9C%2BaUDluR%2FGJe8N%2FwNpGw%3D%3D"
                           target="_blank">�ƶ�֤��</a></p>
                </div>
            </div>
        </div>
    </div>
</article>
<footer>
    <p>Design by <a href="http://www.yangqq.com" target="_blank">������˲���</a> <a href="/">��ICP��88888888��-1</a></p>
</footer>
<a href="#" class="cd-top">Top</a>
</body>
</html>