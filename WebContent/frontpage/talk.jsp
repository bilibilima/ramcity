<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>畅所欲言</title>

    <link href="${pageContext.request.contextPath}/frontpage/css/whir_css.css" rel="stylesheet" type="text/css">

    <!--更改网页图标-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/frontpage/images/wylogo.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/frontpage/images/wylogo.ico" type="image/x-icon"/>


    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/frontpage/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/frontpage/layui/css/layui.css" media="all">
    <script type="text/javascript" src="${pageContext.request.contextPath}/frontpage/script/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/frontpage/script/superslide.2.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/frontpage/script/column.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/frontpage/script/min_contentslider.js"></script>


</head>
<body style="background-color:#DEDEE0" >
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
<div class="nybanner" style="background:url(${pageContext.request.contextPath}/frontpage/images/nybanner1.jpg) center no-repeat;"></div>
<!--中间内容-->
<div  class="layui-col-md12 " >


    <form class="layui-form layui-col-md4 layui-col-md-offset2" action="${pageContext.request.contextPath}/message/addMess.do" lay-filter="example" method="post">
        <hr class="layui-bg-orange ">
        <fieldset class="layui-elem-field layui-field-title " style="margin-top: 50px;">
            <legend>欢迎留言</legend>
        </fieldset>

        <div class="layui-form-item">
            <label class="layui-form-label" style="width: 100px">联系电话</label>
            <div class="layui-input-block">
                <input type="text" id="tel" name="tel" lay-verify="title" autocomplete="off" placeholder="phone"
                       class="layui-input">
            </div>
        </div>
       
       
        <div class="layui-form-item">
            <label class="layui-form-label">性别</label>
            <div class="layui-input-block">
                <input type="radio" id="sex" name="sex" value="男" title="男" checked="">
                <input type="radio" id="sex" name="sex" value="女" title="女">
                <input type="radio" id="sex" name="sex" value="其他" title="其他">
            </div>
        </div>       
        
        
        <div class="layui-form-item">
            <label class="layui-form-label">称呼</label>
            <div class="layui-input-block">
                <input type="text" id="name" name="name" placeholder="请输入称呼" class="layui-input">
            </div>
        </div>


        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">留言</label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容" class="layui-textarea" id="text" name="text"></textarea>
            </div>
        </div>
  
  
         <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">日期</label>
            <div class="layui-input-block">
                 <input type="text" name="messTime" id="messTime" readonly="true" style="background-color:#dedee0">
            </div>
        </div>       
        
        <div class="layui-form-item">
            <label class="layui-form-label">类型</label>
            <div class="layui-input-block">
                <input type="radio" id="messType" name="messType" value="表扬" title="表扬" checked="">
                <input type="radio" id="messType" name="messType" value="建议" title="建议">
                <input type="radio" id="messType" name="messType" value="批评" title="批评">
                <input type="radio" id="messType" name="messType" value="举报" title="举报">
            </div>
        </div>         
        
        

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-filter="demo1">立即提交</button>
            </div>
        </div>
    </form>

    <form class="layui-form layui-col-md2 layui-col-md-offset1  " action="" lay-filter="example" style="padding: 80px 0 0 0">

        <p class="layui-col-md-offset3" style="padding: 0 0 50px 0">扫一扫，微信和我聊</p>

        <img src="images/qrcode.png" width="150px" height="150px" class="layui-col-md-offset3"  />
        <p style="padding: 50px 0 0 0" >扫描二维码关注个人号，欢迎和三个作者一起畅所欲言。</p>
    </form>
</div>



<div id="footer" class="layui-col-md12 ">
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

<script src="layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>

	var mydateInput = document.getElementById("messTime");
	var date = new Date();
	var dateString = date.getFullYear() + "/" + (date.getMonth() + 1) + "/" + date.getDate();
	mydateInput.value = dateString;

	
    layui.use(['form', 'layedit', 'laydate'], function () {
        var form = layui.form
            , layer = layui.layer
            , layedit = layui.layedit
            , laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //自定义验证规则
        form.verify({
            title: function (value) {
                if (value.length < 5) {
                    return '标题至少得5个字符啊';
                }
            }
            , pass: [
                /^[\S]{6,12}$/
                , '密码必须6到12位，且不能出现空格'
            ]
            , content: function (value) {
                layedit.sync(editIndex);
            }
        });

        //监听指定开关
        form.on('switch(switchTest)', function (data) {
            layer.msg('开关checked：' + (this.checked ? 'true' : 'false'), {
                offset: '6px'
            });
            layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
        });

        //监听提交
        form.on('submit(demo1)', function (data) {
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });

        //表单初始赋值
        form.val('example', {
            "username": "" // "name": "value"
            , "password": "123456"
            , "interest": 1
            , "like[write]": true //复选框选中状态
            , "close": true //开关状态
            , "sex": "男"
            , "desc": "大爱这个项目 ，决定了先投一个亿！"
        })


    });
</script>
</body>
</html>
