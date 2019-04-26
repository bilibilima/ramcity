<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>JQuery easyui demo</title>

<style type="text/css">
#user_fm {
	margin: 0;
	padding: 10px 30px;
}

.ftitle {
	font-size: 14px;
	font-weight: bold;
	padding: 5px 0;
	margin-bottom: 10px;
	border-bottom: 1px solid #ccc;
}

.fitem {
	margin-bottom: 5px;
}

.fitem label {
	display: inline-block;
	width: 80px;
}

.fitem input {
	width: 160px;
}
</style>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jquery-easyui-1.4.1/themes/default/easyui.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jquery-easyui-1.4.1/themes/icon.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jquery-easyui-1.4.1/themes/color.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jquery-easyui-1.4.1/demo/demo.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.4.1/jquery.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
	
	<table id="team_dg" class="easyui-datagrid" style="height: 470px;"
		url="${pageContext.request.contextPath}/team/findAll.do" toolbar="#team_toolbar" pagination="true"
		rownumbers="true" fitColumns="true" singleSelect="true"
		data-options="fit:false,border:false,pageSize:10,pageList:[10,20,30,40]">
		<thead>
			<tr>
				<th field="teamId" width="50">编号</th>
				<th field="content" width="50">内容</th>
		
					
			</tr>
		</thead>
	</table>
	<div id="team_toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="Add()">新增</a> 
			
			<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="Edit()">编辑</a> 
			
			<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="Delet()">删除</a>
	</div>

<!-- 对话框 -->
	<div id="team_dlg" class="easyui-dialog" style="padding: 10px 20px"
		closed="true" buttons="#team_dlg-buttons">
		<div class="ftitle">详细信息</div>
		<form id="team_fm" method="post" novalidate>

			<div class="fitem">
				<label>内容:</label> <input name="content" class="easyui-textbox" style="width:250px;height:350px;">
			</div>
	
		</form>
	</div>
	
	
	
	<div id="team_dlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton c6"
			iconCls="icon-ok" onclick="Save()" style="width: 90px">保存</a>
			
			 <a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-cancel" onclick="javascript:$('#team_dlg').dialog('close')" style="width: 90px">取消</a>
	</div>	
	
	<script type="text/javascript">
		var url;	
	
		function Add(){
			$('#team_dlg').dialog('open').dialog('setTitle', '新增');
			$('#team_fm').form('clear');//清除表单数据
			url = '${pageContext.request.contextPath}/team/addTeam.do';//从这里调用“Action”里的方法
		}
		
		
		
		function Edit() {
			var row = $('#team_dg').datagrid('getSelected');
			if (row) {
				$('#team_dlg').dialog('open').dialog('setTitle', '编辑');
				$('#team_fm').form('clear');//清除表单数据
                $('#team_fm').form('load',row);//重新加载编辑数据
				url = '${pageContext.request.contextPath}/team/updateTeam.do?teamId=' + row.teamId;//这里传ID
			}
		}
		
		
		
		function Save() {
			$('#team_fm').form('submit', {
				url : url,
				onSubmit : function() {
					return $(this).form('validate');
				},
				success : function(result) {
					var result = eval('(' + result + ')');
					if (result.errorMsg) {
						$.messager.show({
							title : 'Error',
							msg : result.errorMsg
						});
					} else {
						$('#team_dlg').dialog('close'); // close the dialog
						$('#team_dg').datagrid('reload'); // reload the user data
					}
				}
			});
		}
		
		
		
		function Delet() {
			var row = $('#team_dg').datagrid('getSelected');
			if (row) {
				$.messager.confirm('Confirm', '确定要删除吗?', function(r) {
					if (r) {
						//ajax调用
						$.post('${pageContext.request.contextPath}/team/deleteTeam.do', {
							teamId : row.teamId
						}, function(result) {
							if (result.success) {
								$('#team_dg').datagrid('reload'); // reload the user data
							} else {
								$.messager.show({ // show error message
									title : 'Error',
									msg : result.errorMsg
								});
							}
						}, 'json');
					}//回调函数
				});
			}
		}
	
	</script>

</body>
</html>