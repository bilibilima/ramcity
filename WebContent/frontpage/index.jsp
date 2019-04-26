<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.neuedu.model.*"%>
<%@ page import="java.util.List" %>

<%
	
List<Spots> spotslist= (List<Spots>)request.getAttribute("spotslist");


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>羊城美景</title>
<meta name="keywords" content="羊城美景 " />
<meta name="description" content="羊城美景 " />
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
<div class="fullSlide">
  <div class="bd">
    <ul>
    <c:forEach items="${spotslist}" var="look">
      <li _src="url(${pageContext.request.contextPath}/${look.spotsImage})" style="background:#E2025E center 0 no-repeat;"><a target="_blank" href="#"></a></li>

    </c:forEach>

    </ul>
  </div>
  <div class="hd">
    <ul>
    </ul>
  </div>
  <span class="prev"></span> <span class="next"></span> </div>
<script type="text/javascript">
jQuery(".fullSlide").hover(function() {
    jQuery(this).find(".prev,.next").stop(true, true).fadeTo("show", 0.5)
},
function() {
    jQuery(this).find(".prev,.next").fadeOut()
});
jQuery(".fullSlide").slide({
    titCell: ".hd ul",
    mainCell: ".bd ul",
    effect: "fold",
    autoPlay: true,
    autoPage: true,
    trigger: "click",
    startFun: function(i) {
        var curLi = jQuery(".fullSlide .bd li").eq(i);
        if ( !! curLi.attr("_src")) {
            curLi.css("background-image", curLi.attr("_src")).removeAttr("_src")
        }
    }
});
</script>


<!--畅游凤阳-->
<div class="con2">
    <div class="cyfy">
        <!--畅游凤阳-->
        <div class="cyleft">
            <h2>畅游广州</h2>
            <ul class="list4">
                <li class="rw1"><a href="#">狼巷迷谷景区</a></li>
                <li class="rw2"><a href="#">韭山洞景区</a></li>
                <li class="rw1"><a href="#">小岗村景区</a></li>
                <li class="rw2"><a href="#">鼓楼景区</a></li>
                <li class="rw1"><a href="#">明皇陵景区</a></li>
                <li class="rw2"><a href="#">龙兴寺</a></li>
                <li class="rw1"><a href="#">明中都皇城遗址</a></li>
                <li class="rw2"><a href="#">卧牛湖</a></li>
            </ul>
        </div>
        <ul class="list3">
     	<c:forEach items="${spotslist}" var="look">  
            <li class="cy2"><a href="#"><img src="${pageContext.request.contextPath}/${look.spotsImage}" width="227" height="160"/><span>${look.spotsName }</span></a></li>

        </c:forEach>
        </ul>
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
