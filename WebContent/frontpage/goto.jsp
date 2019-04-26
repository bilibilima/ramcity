<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>出行服务</title>

    <link href="${pageContext.request.contextPath}/frontpage/css/whir_css.css" rel="stylesheet" type="text/css">

    <!--更改网页图标-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/frontpage/images/wylogo.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/frontpage/images/wylogo.ico" type="image/x-icon"/>


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
            <div class="logo"><a href="${pageContext.request.contextPath}/frontpage/hello.jsp"><img src="${pageContext.request.contextPath}/frontpage/images/LOGO.png" width="190" height="70"/></a></div>
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
<div class="nybanner" style="background:url(${pageContext.request.contextPath}/frontpage/images/nybanner6.jpg) center no-repeat;"></div>
<!--中间内容-->
<div id="subbox">
    <div class="position">当前位置：<a href="#">首页</a> > 出行服务</div>
    <div class="mainsub">
        <!--左侧部分-->
        <div class="left870">
            <!--旅游企业-->
            <div class="column4">
                <div class="title5"><a href="#">更多></a>
                    <h1>旅游企业</h1></div>
                <h1 class="qy1">景区名录</h1>
                <ul class="list9">
                    <li>
                        <span class="lypic"><a href="#"><img src="${pageContext.request.contextPath}/frontpage/images/gz01.jpg" width="201"
                                                             height="141"/></a></span>
                        <span class="lytext"><a href="#">广州塔</a></span>
                    </li>
                    <li>
                        <span class="lypic"><a href="#"><img src="${pageContext.request.contextPath}/frontpage/images/gz02.jpg" width="201"
                                                             height="141"/></a></span>
                        <span class="lytext"><a href="#">大教堂</a></span>
                    </li>
                    <li>
                        <span class="lypic"><a href="#"><img src="${pageContext.request.contextPath}/frontpage/images/gz03.jpg" width="201"
                                                             height="141"/></a></span>
                        <span class="lytext"><a href="#">海印大桥</a></span>
                    </li>
                    <li>
                        <span class="lypic"><a href="#"><img src="${pageContext.request.contextPath}/frontpage/images/gz04.jpeg" width="201"
                                                             height="141"/></a></span>
                        <span class="lytext"><a href="#">岭南印象</a></span>
                    </li>
                </ul>
                <!--旅行社名录-->
                <div class="clear"></div>
                <h1 class="qy2">旅行点名录</h1>
                <ul class="list9">
                    <li>
                        <span class="lypic"><a href="#"><img src="${pageContext.request.contextPath}/frontpage/images/gz06.jpg" width="201"
                                                             height="141"/></a></span>
                        <span class="lytext"><a href="#">动物世界</a></span>
                    </li>
                    <li>
                        <span class="lypic"><a href="#"><img src="${pageContext.request.contextPath}/frontpage/images/gz07.jpg" width="201"
                                                             height="141"/></a></span>
                        <span class="lytext"><a href="#">广州贸易图</a></span>
                    </li>
                    <li>
                        <span class="lypic"><a href="#"><img src="${pageContext.request.contextPath}/frontpage/images/gz08.jpeg" width="201"
                                                             height="141"/></a></span>
                        <span class="lytext"><a href="#">中山大学</a></span>
                    </li>
                    <li>
                        <span class="lypic"><a href="#"><img src="${pageContext.request.contextPath}/frontpage/images/gz09.jpg" width="201"
                                                             height="141"/></a></span>
                        <span class="lytext"><a href="#">博物馆</a></span>
                    </li>
                </ul>
                <!--星级农家乐-->
                <div class="clear"></div>
                <h1 class="qy3">星级美食</h1>
                <ul class="list9">
                    <li>
                        <span class="lypic"><a href="#"><img src="${pageContext.request.contextPath}/frontpage/images/gz10.jpg" width="201"
                                                             height="141"/></a></span>
                        <span class="lytext"><a href="#">白切鸡</a></span>
                    </li>
                    <li>
                        <span class="lypic"><a href="#"><img src="${pageContext.request.contextPath}/frontpage/images/gz11.jpg" width="201"
                                                             height="141"/></a></span>
                        <span class="lytext"><a href="#">双皮奶</a></span>
                    </li>
                    <li>
                        <span class="lypic"><a href="#"><img src="${pageContext.request.contextPath}/frontpage/images/gz12.jpg" width="201"
                                                             height="141"/></a></span>
                        <span class="lytext"><a href="#">云吞面</a></span>
                    </li>
                    <li>
                        <span class="lypic"><a href="#"><img src="${pageContext.request.contextPath}/frontpage/images/gz13.jpg" width="201"
                                                             height="141"/></a></span>
                        <span class="lytext"><a href="#">番薯糖水</a></span>
                    </li>
                </ul>
                <!--酒店宾馆-->
                <div class="clear"></div>


            </div>

        </div>
        <!--右侧部分-->
        <div class="right310">
            <div class="tianqi">
                <h1>天气预报</h1>
                <div class="tqcon">
                    <div class="tqyb">
                        <iframe width="200" scrolling="no" height="55" frameborder="0" allowtransparency="true"
                                src="http://i.tianqi.com/index.php?c=code&id=35&py=guangzhou&icon=1&num=3"></iframe>
                    </div>
                </div>
            </div>
            <div class="tel"><img src="${pageContext.request.contextPath}/frontpage/images/tel.jpg"/></div>
            <!--凤阳游记-->
            <div class="column5">
                <div class="title5"><a href="#">更多></a>
                    <h1>旅游留言</h1></div>
                <div class="topnews1">
                    <div class="tjimg"><img src="${pageContext.request.contextPath}/frontpage/images/glimg.jpg" width="108" height="80"/></div>
                    <div class="tjt"><h2><a href="#">广州研究</a></h2></div>
                </div>
                <div class="clear"></div>
                <ul class="list10">
                    <li style="margin: 10px 0 20px 10px">·<a href="#" >郁南南江古水道位于云浮</a></li>
                    <li style="margin: 10px 0 20px 10px">·<a href="#" >梅关古道是全国保存最完整的古驿道</a></li>
                    <li style="margin: 10px 0 20px 10px">·<a href="#" >西京古道是海陆丝绸之路对接的通道</a></li>
                    <li style="margin: 10px 0 20px 10px">·<a href="#" >西片古道沿线周边景点客家文化浓厚</a></li>
                    <li style="margin: 10px 0 20px 10px">·<a href="#" >汕头樟林古港及其周边的历史文化资源最多</a></li>
                    <li style="margin: 10px 0 20px 10px">·<a href="#" >台山梅家大院-海口埠及周边华侨文化浓厚</a></li>
                    <li style="margin: 10px 0 20px 10px">·<a href="#" >珠海岐澳古道沿线周边区域</a></li>
                    <li style="margin: 10px 0 35px 10px">·<a href="#" >从化钱岗古道及其周边以自然生态</a></li>


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
</body>
</html>