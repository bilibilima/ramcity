<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>游玩攻略</title>

    <link href="${pageContext.request.contextPath}/frontpage/css/whir_css.css" rel="stylesheet" type="text/css">

    <!--更改网页图标-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/frontpage/images/wylogo.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/frontpage/images/wylogo.ico" type="image/x-icon" />


    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">


    <script src="${pageContext.request.contextPath}/frontpage/bootstrap/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/frontpage/script/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/frontpage/script/superslide.2.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/frontpage/script/column.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/frontpage/script/min_contentslider.js"></script>
</head>
<body style="background-color:#eeeeee" >
<!--header-->
<div id="header">
  <div class="top">
    <div class="time">
      <script language=JavaScript>
<!--
var enabled = 0; today = new Date();
var day; var date;
if(today.getDay()==0) day = " 星期日"
if(today.getDay()==1) day = " 星期一"
if(today.getDay()==2) day = " 星期二"
if(today.getDay()==3) day = " 星期三"
if(today.getDay()==4) day = " 星期四"
if(today.getDay()==5) day = " 星期五"
if(today.getDay()==6) day = " 星期六"
document.fgColor = "000000";
date = "今天是:" + (today.getFullYear()) + "年" + (today.getMonth() + 1 ) + "月" + today.getDate() + "日" + day +"";
document.write(date);
// -->
</script>
    </div>
    <div class="weather">
      <iframe width="450" scrolling="no" height="18" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=1&color=%23555555&icon=3&py=guangzhou&wind=0&num=1"></iframe>
    </div>

  </div>
  <div class="na">
    <div class="namenu">
      <div class="logo"><a href="${pageContext.request.contextPath}/frontpage/hello.jsp"><img src="${pageContext.request.contextPath}/frontpage/images/LOGO.png" width="190" height="70" /></a></div>
      <ul>
        <li><a href="${pageContext.request.contextPath}/frontpage/survey.jsp"  style="text-decoration: none">广州概况</a></li>
        <li><a href="${pageContext.request.contextPath}/frontpage/history.jsp"  style="text-decoration: none">历史文化</a></li>
        <li><a href="${pageContext.request.contextPath}/food/findFood.do"  style="text-decoration: none">风味美食</a></li>
        <li><a href="${pageContext.request.contextPath}/frontpage/spots.jsp"  style="text-decoration: none">旅游景点</a></li>
        <li><a href="${pageContext.request.contextPath}/frontpage/goto.jsp"  style="text-decoration: none">出行服务</a></li>
        <li><a href="${pageContext.request.contextPath}/frontpage/play.jsp"  style="text-decoration: none">游玩攻略</a></li>
        <li><a href="${pageContext.request.contextPath}/frontpage/team.jsp"  style="text-decoration: none">团队介绍</a></li>
        <li><a href="${pageContext.request.contextPath}/frontpage/talk.jsp"  style="text-decoration: none">畅所欲言</a></li>
		<li><a href="${pageContext.request.contextPath}/backpage/Login.jsp"  style="text-decoration: none">后台登录</a></li>

      </ul>
    </div>
  </div>
</div>
<div class="clear"></div>
<div class="nybanner" style="background:url(${pageContext.request.contextPath}/frontpage/images/nybanner3.jpg) center no-repeat;"></div>
<!--中间内容-->
<div id="subbox">
<div class="position">当前位置：<a href="#">首页</a> >游玩功略</div>
<div class="mainsub">
<!--左侧部分-->
<div class="left870">
<!--广州旅游地图-->
<div class="column4">
<div class="title5"><a href="#">更多></a><h1>广州旅游地图</h1></div>
<div class="lvmap">
<span class="lvL"><img src="${pageContext.request.contextPath}/frontpage/images/lydt.jpg" width="304" height="221" /></span>
<span class="lvR">广州山水灵秀，自然景观奇特优美。韭山洞因山暖地灵多滋生野韭而得名，是长江以北少有的大型溶洞。它“深、大、险、奇、古”，“恢宏朴野、大块文章”，被专家誉为“江北第一洞”。狼巷迷谷景区属于典型的岩溶地貌形态，区内森林茂密，怪石林立，沟壑纵横，峡谷幽深，石林、石峰各显其态、变化万千。石巷曲折蜿蜒，时宽时窄，置身其中，仿佛进入仙境迷谷一般。狼巷迷谷还有被称为“华夏第一寺”的禅窟寺。卧牛湖景区水域宽阔，水体洁净，荡舟玩水，其乐无穷。这三个景区相互毗邻，相得益彰，构成了不可多得的有山、有水、有洞、有泉、有寺、有峡谷的山风景区。广州山风景区1987年被列为安徽省风景名胜区，1994年被国家林业部批准为韭山国家森林公园，2009年被国土资源部批准为国家地质公园。</span>
</div>
</div>
<!--广州美景-->
<div class="column4">
<div class="title5"><a href="#">更多></a><h1>广州美景</h1></div>
<ul class="list9">
<li>
<span class="lypic"><a  href="#"><img src="${pageContext.request.contextPath}/frontpage/images/sp01.jpg" width="201" height="141" /></a></span>
<span class="lytext"><a href="#">沙面岛</a></span>
</li>
<li>
<span class="lypic"><a  href="#"><img src="${pageContext.request.contextPath}/frontpage/images/sp02.jpg" width="201" height="141" /></a></span>
<span class="lytext"><a href="#">广州塔</a></span>
</li>
<li>
<span class="lypic"><a  href="#"><img src="${pageContext.request.contextPath}/frontpage/images/sp03.jpg" width="201" height="141" /></a></span>
<span class="lytext"><a href="#">广州贸易图</a></span>
</li>
<li>
<span class="lypic"><a  href="#"><img src="${pageContext.request.contextPath}/frontpage/images/sp04.jpg" width="201" height="141" /></a></span>
<span class="lytext"><a href="#">白云山夜景</a></span>
</li>
</ul>
</div>
<!--自驾游-->
<div class="column4">
<div class="title5"><a href="#">更多></a><h1>自驾游</h1></div>
<ul class="list9">
<li>
<span class="lypic"><a  href="#"><img src="${pageContext.request.contextPath}/frontpage/images/sp05.jpg" width="201" height="141" /></a></span>
<span class="lytext"><a href="#">白水寨</a></span>
<span class="lyinfo">白水寨风景名胜区位于增城区派潭镇，北回归线穿越其中，被誉为北回归线上的瑰丽翡翠.</span>
</li>
<li>
<span class="lypic"><a  href="#"><img src="${pageContext.request.contextPath}/frontpage/images/sp06.jpg" width="201" height="141" /></a></span>
<span class="lytext"><a href="#">天主教</a></span>
<span class="lyinfo">天主教广州教区最宏伟、最具有特色的一间大教堂。</span>
</li>
<li>
<span class="lypic"><a  href="#"><img src="${pageContext.request.contextPath}/frontpage/images/sp07.jpg" width="201" height="141" /></a></span>
<span class="lytext"><a href="#">白沙岛</a></span>
<span class="lyinfo">白沙岛是位于乐清湾最北端的岛屿，西南约400米处为西门岛。</span>
</li>
<li>
<span class="lypic"><a  href="#"><img src="${pageContext.request.contextPath}/frontpage/images/sp08.jpeg" width="201" height="141" /></a></span>
<span class="lytext"><a href="#">白云山</a></span>
<span class="lyinfo">白云山风景区，是新“羊城八景”之首、国家5A级景区和国家重点风景名胜区。</span>
</li>
</ul>
</div>
</div>
<!--右侧部分-->
<div class="right310">
<!--凤阳游记-->
<div class="column5">
<div class="title5"><a href="#">更多></a><h1>广州游记</h1></div>
<div class="topnews1">
<div class="tjimg"><img src="images/glimg.jpg" width="108" height="80" /></div>
<div class="tjt"><h2><a href="#">花城印象</a></h2>		</div>
</div>
<div class="clear"></div>
<ul class="list10">
<li style="padding: 10px 0 20px 0">·<a href="#">天台素馨园 续写“花魁”史</a></li>
<li style="padding: 20px 0 20px 0">·<a href="#">赏花到天河，四时有花处处皆景</a></li>
<li style="padding: 20px 0 20px 0">·<a href="#">木棉，与广州春天一起绽放</a></li>
<li style="padding: 20px 0 20px 0">·<a href="#">请收下！白云全年赏花地图</a></li>
<li style="padding: 20px 0 20px 0">·<a href="#">春花美景让人醉</a></li>
<li style="padding: 20px 0 20px 0">·<a href="#">花城有花都，花都有花山</a></li>
<li style="padding: 15px 0 25px 0">·<a href="#">广州赏杜鹃花地点一览</a></li>

</ul>
</div>
<!--旅游攻略发布-->
<div class="column5">
<div class="title5"><a href="#">更多></a><h1>美食攻略</h1></div>
<div class="topnews1">
<div class="tjimg"><img src="images/glimg.jpg" width="108" height="80" /></div>
<div class="tjt"><h2><a href="#">广府美食</a></h2>		</div>
</div>
<div class="clear"></div>
<ul class="list10">
<li style="padding: 10px 0 20px 0">·<a href="#">三月吃时令海鲜，去南沙！</a></li>
<li style="padding: 20px 0 20px 0">·<a href="#">初春韭 疏肝气</a></li>
<li style="padding: 20px 0 20px 0">·<a href="#">外脆里嫩 风味独特</a></li>
<li style="padding: 20px 0 20px 0">·<a href="#">过节食鹅意头好</a></li>
<li style="padding: 20px 0 20px 0">·<a href="#">这些广州美食，征服了法国人的胃</a></li>
<li style="padding: 20px 0 20px 0">·<a href="#">猪年菜式有创意</a></li>
<li style="padding: 15px 0 25px 0">·<a href="#">别有一煲滋味在心头</a></li>

</ul>
</div>

</div>

</div>

</div>

<!--底部-->
<div id="footer">
    <div class="links ">
        <!--下面是向左滚动代码-->
        <div id="colee_left" style="overflow:hidden;width:1200px; padding:0px;">
            <table cellpadding="0" cellspacing="0" border="0">
                <tr>
                    <td id="colee_left1" valign="top"><table cellpadding="2" cellspacing="0" border="0">
                        <tr>
                            <td class="td1"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/link1.jpg" width="135" height="42" /></a></td>
                            <td class="td1"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/link2.jpg" width="135" height="42" /></a></td>
                            <td class="td1"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/link3.jpg" width="135" height="42" /></a></td>
                            <td class="td1"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/link4.jpg" width="135" height="42" /></a></td>
                            <td class="td1"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/link5.jpg" width="135" height="42" /></a></td>
                            <td class="td1"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/link6.jpg" width="135" height="42" /></a></td>
                            <td class="td1"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/link7.jpg" width="135" height="42" /></a></td>
                            <td class="td1"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/link8.jpg" width="135" height="42" /></a></td>
                        </tr>
                    </table></td>
                    <td id="colee_left2" valign="top"></td>
                </tr>
            </table>
        </div>
        <script>
            //使用div时，请保证colee_left2与colee_left1是在同一行上.
            var speed=48//速度数值越大速度越慢
            var colee_left2=document.getElementById("colee_left2");
            var colee_left1=document.getElementById("colee_left1");
            var colee_left=document.getElementById("colee_left");
            colee_left2.innerHTML=colee_left1.innerHTML
            function Marquee3(){
                if(colee_left2.offsetWidth-colee_left.scrollLeft<=0)//offsetWidth 是对象的可见宽度
                    colee_left.scrollLeft-=colee_left1.offsetWidth//scrollWidth 是对象的实际内容的宽，不包边线宽度
                else{
                    colee_left.scrollLeft++
                }
            }
            var MyMar3=setInterval(Marquee3,speed)
            colee_left.onmouseover=function() {clearInterval(MyMar3)}
            colee_left.onmouseout=function() {MyMar3=setInterval(Marquee3,speed)}
        </script>
        <!--向左滚动代码结束-->
    </div>

    <div class="copyright" style="padding: 100px 0 0 0">版权所有：广西民族师范学院  邮编：000000 邮箱：1438178998@qq.com<br />
        粤ICP备00000000号 </div>
</div>
</body>
</html>