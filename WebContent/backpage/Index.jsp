<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>JQuery easyui demo</title>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jquery-easyui-1.4.1/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jquery-easyui-1.4.1/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.4.1/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	function open_menu(titleName, menuUrl) {
		if ($("#tt").tabs("exists", titleName)) {
			$("#tt").tabs("select", titleName);
		} else {
			$('#tt').tabs('add', {
				title : titleName,
				href : menuUrl,
				closable : true
			});
		}
	}
</script>
</head>

<body class="easyui-layout">
	<div id="cc" class="easyui-layout" style="width: 100%;heith:100%; min-height: 600px;">
		<div data-options="region:'north',border:false" style="height: 100px;">
			<img alt="后台管理" src="${pageContext.request.contextPath}/images/backlogo.png" width=100px height=80px style="padding: 20px 0 0 20px;">
			<!-- 记录是谁登录 -->
			<div style="float:right;"><h1>欢迎：${LOGIN_USER.peopleName}</h1></div>
		</div>
		
		<div data-options="region:'west',title:'菜单',split:true"
			style="width: 200px;">
			<div id="aa" class="easyui-accordion"
				data-options="fit:true,border:false">


				<!-- 系统管理 -->
				<div title="系统管理" data-options="iconCls:'icon-reload'"
					style="padding: 10px;">
					<a id="btn" href="javascript:void(0);" class="easyui-linkbutton"
						data-options="plain:true" onclick="open_menu('人员管理','${pageContext.request.contextPath}/backpage/People.jsp')">人员管理</a><br>					
												
				</div>
						
				
				<!-- 文案管理 -->
				<div title="文案管理" data-options="iconCls:'icon-reload'"
					style="padding: 10px;">
					<a id="btn" href="javascript:void(0);" class="easyui-linkbutton"
						data-options="plain:true" onclick="open_menu('文案管理','${pageContext.request.contextPath}/backpage/Article.jsp')">文案管理</a><br>					
							
				</div>


				<!-- 景点管理 -->
				<div title="景点管理" data-options="iconCls:'icon-reload'"
					style="padding: 10px;">								
					<a id="btn" href="javascript:void(0);" class="easyui-linkbutton"
						data-options="plain:true" onclick="open_menu('景点管理','${pageContext.request.contextPath}/backpage/Spots.jsp')">景点管理</a><br>
							
				</div>
				

				<!-- 美食管理 -->
				<div title="美食管理" data-options="iconCls:'icon-reload'"
					style="padding: 10px;">								
					<a id="btn" href="javascript:void(0);" class="easyui-linkbutton"
						data-options="plain:true" onclick="open_menu('美食管理','${pageContext.request.contextPath}/backpage/Food.jsp')">美食管理</a><br>
							
				</div>


				<!-- 公告管理 -->
				<div title="公告管理" data-options="iconCls:'icon-reload'"
					style="padding: 10px;">
					
					<a id="btn" href="javascript:void(0);" class="easyui-linkbutton"
						data-options="plain:true" onclick="open_menu('公告管理','${pageContext.request.contextPath}/backpage/Notic.jsp')">公告管理</a><br>	
					
				</div>


				<!-- 其他管理 -->
				<div title="其他管理" data-options="iconCls:'icon-reload'"
					style="padding: 10px;">
					
					<a id="btn" href="javascript:void(0);" class="easyui-linkbutton"
						data-options="plain:true" onclick="open_menu('留言管理','${pageContext.request.contextPath}/backpage/Message.jsp')">留言管理</a><br>	
			
					<a id="btn" href="javascript:void(0);" class="easyui-linkbutton"
						data-options="plain:true" onclick="open_menu('团队介绍','${pageContext.request.contextPath}/backpage/Team.jsp')">团队介绍</a><br>				
		
					<a href="${pageContext.request.contextPath}/frontpage/hello.jsp" class="easyui-linkbutton" 
						data-options="plain:true">回到首页</a><br>		
					
					<a href="${pageContext.request.contextPath}/people/logout.do" class="easyui-linkbutton" 
						data-options="plain:true">安全退出</a>
					
				</div>
						
			</div>
		</div>


		<div data-options="region:'center',border:false,plain:true">
			<div id="tt" class="easyui-tabs" fit=true>
				<div title="首页" style="text-align: center; font-size: 24px;">
					<p>欢迎来到后台管理系统</p>
				</div>
			</div>
		</div>
	</div>
	<div style="height: 80px; text-align: center; font-size: 12px;">
		<p>版权所有,&copy;2016-2018</p>
	</div>
</body>
</html>