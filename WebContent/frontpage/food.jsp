<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.neuedu.model.*"%>
<%@ page import="java.util.List" %>

<%
	
List<Food> foodlist= (List<Food>)request.getAttribute("foodlist");


%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>风味美食</title>
    <meta name="keywords" content="羊城美景 "/>
    <meta name="description" content="羊城美景 "/>
    <link href="${pageContext.request.contextPath}/frontpage/css/whir_css.css" rel="stylesheet" type="text/css">

    <!--更改网页图标-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/frontpage/images/wylogo.ico" type="image/x-icon"/>


    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">


    <script src="${pageContext.request.contextPath}/frontpage/bootstrap/js/bootstrap.min.js"></script>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }

        ul {
            list-style: none;
        }

        a {
            text-decoration: none;
        }

        .fl_l {
            width: 200px;
            float: left;
            border: 1px solid #f4f4f4;
            background: #fff;
        }

        .fl_l li a {
            border-bottom: 1px solid #eee;
            text-align: center;
            display: block;

            font-size: 14px;
            line-height: 40px;

            background: white;
            color: #337ABE;

            border-radius: 0;
        }

        .fl_l li.active a {
            background: #2374B7;
            color: #FFF8F2;
            border: 2px solid #0088cc;
        }

        .fl_r {
            float: right;
            width: 960px;
        }

        .fl_r li {

        }

    </style>

    <script type="text/javascript" src="${pageContext.request.contextPath}/frontpage/script/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/frontpage/script/superslide.2.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/frontpage/script/column.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/frontpage/script/min_contentslider.js"></script>
</head>
<body>
<!--header-->
<div id="header">
    <div class="top">
        <div class="time">
            <script language=JavaScript>
                <!--
                var enabled = 0;
                today = new Date();
                var day;
                var date;
                if (today.getDay() == 0) day = " 星期日"
                if (today.getDay() == 1) day = " 星期一"
                if (today.getDay() == 2) day = " 星期二"
                if (today.getDay() == 3) day = " 星期三"
                if (today.getDay() == 4) day = " 星期四"
                if (today.getDay() == 5) day = " 星期五"
                if (today.getDay() == 6) day = " 星期六"
                document.fgColor = "000000";
                date = "今天是:" + (today.getFullYear()) + "年" + (today.getMonth() + 1) + "月" + today.getDate() + "日" + day + "";
                document.write(date);
                // -->
            </script>
        </div>
        <div class="weather">
            <iframe width="450" scrolling="no" height="18" frameborder="0" allowtransparency="true"
                    src="http://i.tianqi.com/index.php?c=code&id=1&color=%23555555&icon=3&py=guangzhou&wind=0&num=1"></iframe>
        </div>

    </div>
    <div class="na">
        <div class="namenu">
            <div class="logo"><a href="${pageContext.request.contextPath}/frontpage/images/LOGO.png" width="190" height="70"/></a></div>
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
<div class="nybanner" style="background:url(${pageContext.request.contextPath}/frontpage/images/nybanner2.jpg) center no-repeat;"></div>
<!--中间内容-->

<div class="row" style="padding: 0 150px 0 150px ">
    <div class="col-md-3">


        <li style="margin: 35px 0 30px 0;list-style:none"><img style="width: 200px" src="${pageContext.request.contextPath}/frontpage/images/left.png"></li>


        <ul class="fl_l">
            <li class="active"><a href="##" style="text-decoration: none">广州小吃</a></li>
            <li><a href="##" style="text-decoration: none">美食名店</a></li>
            <li><a href="##" style="text-decoration: none">美食街区</a></li>
            <li><a href="##" style="text-decoration: none">广州小吃</a></li>
            <li><a href="##" style="text-decoration: none">美食名店</a></li>
            <li><a href="##" style="text-decoration: none">美食街区</a></li

        </ul>
    </div>
    <div class="col-md-9">
        <div class="panel panel-info  " style="margin: 40px 0 40px 0;">
            <div class="panel-heading">
                <h3 class="panel-title">
                    <h3>导语：</h3>
                    <p style="padding: 0 0 0 50px">
                        自古以来，饮食具有自己独特的文化内涵，也即是“吃”的文化。广东饮食文化是岭南文化的重要组成部分，并且大大丰富了岭南文化的内涵和特色，对我国及其亚太地区的饮食文化都产生深远的影响。</p>
                </h3>
            </div>
        </div>


        <ul class="fl_r">
     	<c:forEach items="${foodlist}" var="one">  
            <li style="background-color: #D0D0D0 ;box-shadow:2px 2px 10px #909090; margin: 40px" class="col-md-12">

                <a href="#" title="${one.foodName }" target="_blank"><img src="${pageContext.request.contextPath}/${one.foodPhoto} " class=" col-md-3"></a>
                <h3 class=" col-md-8">${one.foodName }</h3>
                <p class=" col-md-8">
                    <nobr style="margin-left: 45px">发布时间：2019-04-25</nobr>
                </p>
                <p class=" col-md-8">${one.article.writeTitle}</p>

            </li>
        </c:forEach>
        </ul>
        <div style="clear: both;"></div>
    </div>
</div>
<!--底部-->
<div id="footer">
    <div class="links ">
        <!--下面是向左滚动代码-->
        <div id="colee_left" style="overflow:hidden;width:1200px; padding:0px;">
            <table cellpadding="0" cellspacing="0" border="0">
                <tr>
                    <td id="colee_left1" valign="top">
                        <table cellpadding="2" cellspacing="0" border="0">
                            <tr>
                                <td class="td1"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/link1.jpg" width="135"
                                                                                 height="42"/></a></td>
                                <td class="td1"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/link2.jpg" width="135"
                                                                                 height="42"/></a></td>
                                <td class="td1"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/link3.jpg" width="135"
                                                                                 height="42"/></a></td>
                                <td class="td1"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/link4.jpg" width="135"
                                                                                 height="42"/></a></td>
                                <td class="td1"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/link5.jpg" width="135"
                                                                                 height="42"/></a></td>
                                <td class="td1"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/link6.jpg" width="135"
                                                                                 height="42"/></a></td>
                                <td class="td1"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/link7.jpg" width="135"
                                                                                 height="42"/></a></td>
                                <td class="td1"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/link8.jpg" width="135"
                                                                                 height="42"/></a></td>
                            </tr>
                        </table>
                    </td>
                    <td id="colee_left2" valign="top"></td>
                </tr>
            </table>
        </div>
        <script>
            //使用div时，请保证colee_left2与colee_left1是在同一行上.
            var speed = 48//速度数值越大速度越慢
            var colee_left2 = document.getElementById("colee_left2");
            var colee_left1 = document.getElementById("colee_left1");
            var colee_left = document.getElementById("colee_left");
            colee_left2.innerHTML = colee_left1.innerHTML

            function Marquee3() {
                if (colee_left2.offsetWidth - colee_left.scrollLeft <= 0)//offsetWidth 是对象的可见宽度
                    colee_left.scrollLeft -= colee_left1.offsetWidth//scrollWidth 是对象的实际内容的宽，不包边线宽度
                else {
                    colee_left.scrollLeft++
                }
            }

            var MyMar3 = setInterval(Marquee3, speed)
            colee_left.onmouseover = function () {
                clearInterval(MyMar3)
            }
            colee_left.onmouseout = function () {
                MyMar3 = setInterval(Marquee3, speed)
            }
        </script>
        <!--向左滚动代码结束-->
    </div>

    <div class="copyright" style="padding: 100px 0 0 0">版权所有：广西民族师范学院 邮编：000000 邮箱：1438178998@qq.com<br/>
        粤ICP备00000000号
    </div>
</div>
</div>


<script type="text/javascript">
    $(function () {
        //设置标杆
        var _line = parseInt($(window).height() / 3);
        $(window).scroll(function () {
            //滚动730px，左侧导航固定定位
            if ($(window).scrollTop() > 730) {
                $('.fl_l').css({'position': 'fixed', 'top': 100})
            } else {
                $('.fl_l').css({'position': '', 'top': ''})
            }
            ;
            $('.fl_l li').eq(0).addClass('active');
            //滚动到标杆位置,左侧导航加active
            $('.fl_r li').each(function () {
                var _target = parseInt($(this).offset().top - $(window).scrollTop() - _line);
                var _i = $(this).index();
                if (_target <= 0) {
                    $('.fl_l li').removeClass('active');
                    $('.fl_l li').eq(_i).addClass('active');
                }
                //如果到达页面底部，给左侧导航最后一个加active
                else if ($(document).height() == $(window).scrollTop() + $(window).height()) {
                    $('.fl_l li').removeClass('active');
                    $('.fl_l li').eq($('.fl_r li').length - 1).addClass('active');
                }
            });
        });
        $('.fl_l li').click(function () {
            $(this).addClass('active').siblings().removeClass('active');
            var _i = $(this).index();
            $('body, html').animate({scrollTop: $('.fl_r li').eq(_i).offset().top - _line}, 500);
        });
    });
</script>
</body>
</html>