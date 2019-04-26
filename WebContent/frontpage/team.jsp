<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>团队介绍</title>

    <link href="${pageContext.request.contextPath}/frontpage/css/whir_css.css" rel="stylesheet" type="text/css">

    <!--更改网页图标-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/frontpage/images/wylogo.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/frontpage/images/wylogo.ico" type="image/x-icon"/>


    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/frontpage/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="layui/css/layui.css">
    <script  src="${pageContext.request.contextPath}/frontpage/layui/layui.js" charset="utf-8"></script>
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
<div class="nybanner" style="background:url(${pageContext.request.contextPath}/frontpage/images/nybanner4.jpg) center no-repeat;"></div>
<!--中间内容-->
<div id="subbox">
    <div class="position">当前位置：<a href="#">首页</a> > 团队介绍</div>
    <div class="wzfy">

        <div class="titlei12"><h1>团队介绍</h1></div>
        <div class="layui-tab">
            <ul class="layui-tab-title">
                <li class="layui-this">成员简介</li>
                <li>时间线</li>
                <li>团队地点</li>

            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <ul class="list11">

                        <div class="col-md-4">
                            <span class="lypic col-md-offset-2"><a href="#"><img style="width: 200px;height: 100px" src="${pageContext.request.contextPath}/frontpage/images/cxy1.jpg"/></a></span>
                            <span class="lytext col-md-offset-2"><a href="#">武文霖</a></span>
                            <span class="lyinfo  col-md-offset-2">广西民师院 计本162 学渣 </span>
                        </div>

                        <div class="col-md-4">
                            <span class="lypic col-md-offset-2"><a href="#"><img style="width: 200px;height: 100px" src="${pageContext.request.contextPath}/frontpage/images/cxy2.jpg"/></a></span>
                            <span class="lytext col-md-offset-2"><a href="#">马礼庆</a></span>
                            <span class="lyinfo col-md-offset-2">广西民师院 计本162 学霸</span>
                        </div>
                        <div class=" col-md-4">
                            <span class="lypic col-md-offset-2"><a href="#"><img style="width: 200px;height: 100px" src="${pageContext.request.contextPath}/frontpage/images/cxy3.jpg"/></a></span>
                            <span class="lytext col-md-offset-2"><a href="#">马德权</a></span>
                            <span class="lyinfo col-md-offset-2">广西民师院 计本162 学霸</span>
                        </div>
                    </ul>
                </div>
                <div class="layui-tab-item">
                    <div class="layui-col-md-offset2 col-md-8">
                        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
                            <legend>项目时间线</legend>
                        </fieldset>
                        <ul class="layui-timeline">
                            <li class="layui-timeline-item">
                                <i class="layui-icon layui-timeline-axis"></i>
                                <div class="layui-timeline-content layui-text">
                                    <h3 class="layui-timeline-title">2019年4-21，在东软教师指导下确立项目，并开始项目的开展</h3>
                                    <p>前台框架模板搭建ing~</p>
                                    <p>后台框架搭建ing~</p>
                                </div>
                            </li>
                            <li class="layui-timeline-item">
                                <i class="layui-icon layui-timeline-axis"></i>
                                <div class="layui-timeline-content layui-text">
                                    <h3 class="layui-timeline-title">4月22日</h3>
                                    <p>前台模板整体框架完成</p>
                                    <p>后台基本功能完成</p>
                                </div>
                            </li>
                            <li class="layui-timeline-item">
                                <i class="layui-icon layui-timeline-axis"></i>
                                <div class="layui-timeline-content layui-text">
                                    <h3 class="layui-timeline-title">4月24日</h3>
                                    <p>
                                        <br>前台所有的文字图片 更新完成
                                        <br>后台管理框架完善 并初步链接前端!
                                    </p>
                                </div>
                            </li>
                            <li class="layui-timeline-item">
                                <i class="layui-icon layui-timeline-axis"></i>
                                <div class="layui-timeline-content layui-text">
                                    <h3 class="layui-timeline-title">4月25日</h3>
                                    <p>
                                        <br>后台和前台链接完成
                                        <br>整体项目测试ok!
                                    </p>
                                </div>
                            </li>
                            <li class="layui-timeline-item">
                                <i class="layui-icon layui-timeline-axis"></i>
                                <div class="layui-timeline-content layui-text">
                                    <div class="layui-timeline-title">未来</div>
                                </div>
                            </li>
                            <li class="layui-timeline-item">
                                <i class="layui-icon layui-anim layui-anim-rotate layui-anim-loop layui-timeline-axis"></i>
                                <div class="layui-timeline-content layui-text">
                                    <div class="layui-timeline-title">项目未来会更加的完善 ，也可以当做我们的打代码提升能力的项目。</div>
                                </div>
                            </li>
                        </ul>

                    </div>
                </div>
                <div class="layui-tab-item">
                    <div class="layui-col-md-offset2 col-md-8">
                        <iframe src="${pageContext.request.contextPath}/frontpage/link.jsp" style="width: 710px; height: 560px"></iframe>
                    </div>
                </div>


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
                                <td class="td1"><a href="#" target="_blank"><img src="images/link1.jpg" width="135"
                                                                                 height="42"/></a></td>
                                <td class="td1"><a href="#" target="_blank"><img src="images/link2.jpg" width="135"
                                                                                 height="42"/></a></td>
                                <td class="td1"><a href="#" target="_blank"><img src="images/link3.jpg" width="135"
                                                                                 height="42"/></a></td>
                                <td class="td1"><a href="#" target="_blank"><img src="images/link4.jpg" width="135"
                                                                                 height="42"/></a></td>
                                <td class="td1"><a href="#" target="_blank"><img src="images/link5.jpg" width="135"
                                                                                 height="42"/></a></td>
                                <td class="td1"><a href="#" target="_blank"><img src="images/link6.jpg" width="135"
                                                                                 height="42"/></a></td>
                                <td class="td1"><a href="#" target="_blank"><img src="images/link7.jpg" width="135"
                                                                                 height="42"/></a></td>
                                <td class="td1"><a href="#" target="_blank"><img src="images/link8.jpg" width="135"
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

<script>
    layui.use('element', function(){
        var $ = layui.jquery
            ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

        //触发事件
        var active = {
            tabAdd: function(){
                //新增一个Tab项
                element.tabAdd('demo', {
                    title: '新选项'+ (Math.random()*1000|0) //用于演示
                    ,content: '内容'+ (Math.random()*1000|0)
                    ,id: new Date().getTime() //实际使用一般是规定好的id，这里以时间戳模拟下
                })
            }
            ,tabDelete: function(othis){
                //删除指定Tab项
                element.tabDelete('demo', '44'); //删除：“商品管理”


                othis.addClass('layui-btn-disabled');
            }
            ,tabChange: function(){
                //切换到指定Tab项
                element.tabChange('demo', '22'); //切换到：用户管理
            }
        };

        $('.site-demo-active').on('click', function(){
            var othis = $(this), type = othis.data('type');
            active[type] ? active[type].call(this, othis) : '';
        });

        //Hash地址的定位
        var layid = location.hash.replace(/^#test=/, '');
        element.tabChange('test', layid);

        element.on('tab(test)', function(elem){
            location.hash = 'test='+ $(this).attr('lay-id');
        });

    });
</script>

</body>
</html>
