<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>广州概况</title>

    <link href="${pageContext.request.contextPath}/frontpage/css/whir_css.css" rel="stylesheet" type="text/css">


    <!--更改网页图标-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/frontpage/images/wylogo.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/frontpage/images/wylogo.ico" type="image/x-icon"/>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/frontpage/bootstrap/js/bootstrap.min.js"></script>
<!--    <link rel="stylesheet" href="css/uikit.min.css" />-->
<!--    <script src="js/uikit.min.js"></script>-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/frontpage/layui/css/layui.css">
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
<div class="nybanner" style="background:url(${pageContext.request.contextPath}/frontpage/images/nybanner5.jpg) center no-repeat;"></div>
<!--中间内容-->

<div id="subbox">
    <div class="position">当前位置：<a href="#">首页</a> > 广州概况</div>
    <div class="mainbox">
        <div class="titlei12"><h1>广州概况</h1></div>
        <div class="layui-tab">
            <ul class="layui-tab-title">
                <li class="layui-this">广州简介</li>
                <li>广州旅游地图</li>
                <li>广州旅游概况</li>

            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show" style="font-size: 25px">
                    广州，简称穗<br >&nbsp</br>又称羊城、花城，是广东省省会、副省级市、国家中心城市、超大城市、国际大都市、国际商贸中心、国际综合交通枢纽、国家综合性门户城市，首批沿海开放城市，是南部战区司令部驻地 [1-2]  。广州地处广东省中南部，珠江三角洲北缘，濒临南海，邻近香港、澳门，是中国通往世界的南大门，是粤港澳大湾区、泛珠江三角洲经济区的中心城市以及“一带一路”的枢纽城市。 [3-6]
                    广州是国家历史文化名城，从秦朝开始，广州一直是郡治、州治、府治的行政中心；一直是华南地区的政治、军事、经济、文化和科教中心，广州是广府文化的辐射中心，广州从3世纪30年代起成为海上丝绸之路的主港，唐宋时期成为中国第一大港，是世界著名的东方港市；明清时期是中国唯一的对外贸易大港，是世界上唯一2000多年长盛不衰的大港。 [7-9]
                    广州市总面积7434平方公里，辖11个市辖区，属海洋性亚热带季风气候。广州是华南地区最大的城市 [10]  。广州被全球权威机构GaWC评为世界一线城市 [11]  。每年在广州举办的“中国进出口商品交易会”，吸引了大量客商以及大量外资企业、世界500强企业的投资 [12]  。广州的国家高新技术企业达8700多家，总量居全国前三。广州集结了全省80%的高校、70%的科技人员，在校大学生总量居全国第一。 [13-14]
                    广州人均住户存款均居全国前三位，人均可支配收入居全省第一位 [15-17]  。广州人类发展指数居中国第一位，国家中心城市指数居中国第三位 [18-19]  。福布斯2017年“中国大陆最佳商业城市排行榜”居第二位；中国百强城市排行榜居第三位
                </div>
                <div class="layui-tab-item">
                    <div class="layui-col-md-offset2 col-md-8">
                        <iframe src="${pageContext.request.contextPath}/frontpage/map.jsp" style="width: 710px; height: 560px"></iframe>
                    </div>
                </div>
                <div class="layui-tab-item" style="font-size: 25px">2017年<br >&nbsp</br>广州市实现地区生产总值（GDP）达21503.15亿元，同比增长7.0%，人均GDP达到150678元，按平均汇率折算为22317美元。地区财政收入5947.00亿元，增长14.0% [43]  。第一产业增加值233.49亿元，下降1.0%，第二产业和第三产业增加值分别为6015.29亿元和15254.37亿元，分别增长4.7%和8.2%。第一、二、三次产业增加值的比例为1.09：27.97：70.94。第二、三产业对经济增长的贡献率分别为20.9%和79.3% [43]  。第三产业对经济增长的贡献率比上年提高2.3%。 [44]
                    广州已形成汽车、石油化工、电子、电力热力生产供应、电气机械及器材制造、批发零售、金融、房地产、租赁和商务服务、交通运输10个千亿级产业集群 [45]  。先进制造业增加值占规模以上制造业增加值比重65.6% [46]  。广州正大力实施IAB计划（新一代信息技术、人工智能、生物医药）和NEM计划（新能源、新材料），打造若干个千亿级产业集群，打造国际科技产业创新中心 [47-48]  。广州是“‘中国制造2025’试点示范城市”。 [49]
                    2017年，广州汽车产量达310.8万辆，产量居全国第一。2016年，广州汽车工业总产值达4346.27亿元，成为第一大支柱产业。2017年，广州市软件和信息服务业营业收入首次突破3000亿元，增长18%左右，已成为支柱产业之一 [46]  。2017年实现金融业增加值1998.76亿元，同比增长8.6%，占GDP的比重达9.3%，成为广州市第五大支柱产业和第四大经济增长引擎 [50]  。广州智能装备及机器人产业规模已近500亿元，机器人生产量在全国排第二位，已形成从上游关键零部件、中游整机到下游系统集成的机器人完整产业链条 [51]  。广州市邮政业业务总量突破600亿元，其中快递业务量完成28.67亿件，居全国第一 [52]  。跨境电子商务规模居全国第一。 [53]
                    广州总部经济发展能力位居中国第三位，稳居总部经济发展第一能级城市范围内 [54]  。广州已吸引了全球130多个国家和地区的投资者前来投资兴业，并与全球220多个国家和地区保持贸易往来。截至2017年9月底，累计有3万家外商投资企业在广州落户。297家世界500强企业已在广州设立921个项目，其中120家把总部或地区总部设在广州 [12]  。广州互联网企业超过3000家，诞生了微信、唯品会、YY语音、酷狗音乐、网易、UC浏览器、虎牙直播等 [55]  ，广州网络游戏产业营收就占全国近三成。 [56]
                    2017年，广州新增高新技术企业4000家以上，增量仅次于北京，总数超过8700家。</div>


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


<script src="layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
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