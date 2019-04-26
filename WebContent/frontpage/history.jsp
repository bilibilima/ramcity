<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.neuedu.model.*"%>
<%@ page import="java.util.List" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>历史文化</title>

    <link href="css/whir_css.css" rel="stylesheet" type="text/css">

    <!--更改网页图标-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/frontpage/images/wylogo.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/frontpage/images/wylogo.ico" type="image/x-icon"/>

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

        /*.box{*/
        /*    margin: 0 auto;*/
        /*    width: 1200px;*/
        /*}*/
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



    </style>


    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">


    <script src="${pageContext.request.contextPath}/frontpage/bootstrap/js/bootstrap.min.js"></script>

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
            <div class="logo"><a href="${pageContext.request.contextPath}/frontpage/index.html"><img src="${pageContext.request.contextPath}/frontpage/images/LOGO.png" width="190" height="70"/></a></div>
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
<div class="nybanner" style="background:url(${pageContext.request.contextPath}/frontpage/images/nybanner.jpg) center no-repeat;"></div>
<!--中间内容-->

<div class="row" style="padding: 0 150px 0 150px ">
    <div class="col-md-3">


        <li style="margin: 35px 0 30px 0;list-style:none"><img style="width: 200px" src="images/left2.jpg"></li>


        <ul class="fl_l">
            <li class="active"><a href="##" style="text-decoration: none">历史前言</a></li>
            <li><a href="##" style="text-decoration: none">地理文化</a></li>
            <li><a href="##" style="text-decoration: none">经济发展</a></li>
            <li><a href="##" style="text-decoration: none">语言人口</a></li>
            <li><a href="##" style="text-decoration: none">天气气候</a></li>
            <li><a href="##" style="text-decoration: none">节气风俗</a></li>
            <li><a href="##" style="text-decoration: none">便利措施</a></li>

        </ul>
    </div>
    <div class="col-md-9">
        <div class="panel panel-info  " style="margin: 40px 0 40px 0;">
            <div class="panel-heading">
                <h3 class="panel-title">
                    <h3>导语：</h3>
                    <p style="padding: 0 0 0 50px">广东的历史文化历史悠久，源远流长。它同其他地区的历史文化一样，都有着中国传统历史的共同性。</p>
                </h3>
            </div>
        </div>


        <ul class="fl_r">

            <li style="background-color: #D0D0D0 ;box-shadow:2px 2px 10px #909090; margin: 40px" class="col-md-12">

                <a href="#" title="历史前言" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/lsqy.jpeg"  class=" col-md-3"></a>
                <h3  class=" col-md-8">历史前言</h3>
                <p class=" col-md-8" >文章来源：大洋网<nobr style="margin-left: 45px">发布时间：2019-04-11</nobr></p>
                <p class=" col-md-8">广东简称“粤”，狭义上指岭南地区。商周时期受楚国影响，古番禺就有“楚庭”之称。据记载，历史上这样大面积的南迁一共有三次，历经两晋两宋时期，造就了广东现有的广府、客家和潮汕三大民系。</p>

            </li>
            <li style="background-color: #D0D0D0 ;box-shadow:2px 2px 10px #909090; margin: 40px" class="col-md-12">

                <a href="#" title="地理文化" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/dlwh.jpg"  class=" col-md-3"></a>
                <h3  class=" col-md-8">地理文化</h3>
                <p class=" col-md-8" >文章来源：大洋网<nobr style="margin-left: 45px">发布时间：2019-04-11</nobr></p>
                <p class=" col-md-8">广东的位置，开阔而关键，面南背北，引领中国大地之气势。因此，成为商业繁盛之地，领经济之先，历历史沧桑，始终如一，它的独特魅力，正是由特殊的地理位置开始。</p>

            </li><li style="background-color: #D0D0D0 ;box-shadow:2px 2px 10px #909090; margin: 40px" class="col-md-12">

            <a href="#" title="经济发展" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/jjfz.jpg"  class=" col-md-3"></a>
            <h3  class=" col-md-8">经济发展</h3>
            <p class=" col-md-8" >文章来源：大洋网<nobr style="margin-left: 45px">发布时间：2019-04-11</nobr></p>
            <p class=" col-md-8">21世纪的广东仍然以它强劲的姿态引领经济发展大潮，它从来没有忘却自己千年古港、海上丝路的辉煌历史，但它没有躺在陈迹上不思进取，在现代社会经济发展的快节奏中，广东仍然以强势坦然的发展劲头，宣誓着自己独一无二的经济地位。。</p>

        </li><li style="background-color: #D0D0D0 ;box-shadow:2px 2px 10px #909090; margin: 40px" class="col-md-12">

            <a href="#" title="语言人口" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/yyrk.jpg"  class=" col-md-3"></a>
            <h3  class=" col-md-8">语言人口</h3>
            <p class=" col-md-8" >文章来源：大洋网<nobr style="margin-left: 45px">发布时间：2019-04-11</nobr></p>
            <p class=" col-md-8">广东是56个民族成分齐全的省份。汉族民系主要来源于中原汉族与岭南土著长期融合，包括广府民系、客家民系和福佬民系，三大民系的人民在生活习俗、文化意识和性格特征的长期浸润下，形成了各自的语言体系，促进了岭南语言文化的发展。广东世居少数民族有壮、瑶、畲、回、满族，每个少数民族都有着特征鲜明的民族语言，这些土生土长，纯朴卓越的少数民族语言又为广东的语言体系增添了别样的风情。</p>

        </li><li style="background-color: #D0D0D0 ;box-shadow:2px 2px 10px #909090; margin: 40px" class="col-md-12">

            <a href="#" title="天气气候" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/tqqh.jpg"  class=" col-md-3"></a>
            <h3  class=" col-md-8">天气气候</h3>
            <p class=" col-md-8" >文章来源：大洋网<nobr style="margin-left: 45px">发布时间：2019-04-11</nobr></p>
            <p class=" col-md-8">广东热量资源丰富，气候温暖，冬无严寒，各地年平均温度在20.4～23.1℃之间，最冷月1月份平均温度约在9～17℃之间，无霜期长，南部基本无霜。相对于北国是一个“天然大温室”。全年日照为1500-2100小时。。</p>

        </li><li style="background-color: #D0D0D0 ;box-shadow:2px 2px 10px #909090; margin: 40px" class="col-md-12">

            <a href="#" title="节庆习俗" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/jqfs.jpg"  class=" col-md-3"></a>
            <h3  class=" col-md-8">节庆习俗</h3>
            <p class=" col-md-8" >文章来源：大洋网<nobr style="margin-left: 45px">发布时间：2019-04-11</nobr></p>
            <p class=" col-md-8">岁时风俗：团年饭、煮汤圆、行花街、开年、人日、闹元宵、游花地、逗利是（领红包）、插桃花、摆年橘等，均是春节的岁时风俗；岁时风俗还有：清明扫墓、七夕乞巧、中秋吃月饼、重阳登高等。

                特色食俗：饮早茶、吃宵夜、饮糖水、喝凉茶、喝老火靓汤、打边炉（吃火锅）、食粥品、冬令吃狗肉等。</p>

        </li><li style="background-color: #D0D0D0 ;box-shadow:2px 2px 10px #909090; margin: 40px" class="col-md-12">

            <a href="#" title="便利措施" target="_blank"><img src="${pageContext.request.contextPath}/frontpage/images/blcs.jpg"  class=" col-md-3"></a>
            <h3  class=" col-md-8">便利措施</h3>
            <p class=" col-md-8" >文章来源：大洋网<nobr style="margin-left: 45px">发布时间：2019-04-11</nobr></p>
            <p class=" col-md-8">广东交通四通八达，海陆空架构齐全，主干空港进出便捷，每个城市均有完善的市内交通系统辅助，保证每位游客的出行无忧。

                航空

                广州白云国际机场、深圳宝安国际机场、珠海金湾国际机场、揭阳潮汕国际机场、惠州机场、佛山沙堤机场、梅县机场、汕头外砂机场、湛江机场。</p>

        </li>

        </ul>
<!--        <div style="clear: both;"></div>-->
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
