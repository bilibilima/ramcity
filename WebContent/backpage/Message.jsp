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
	
	<table id="mess_dg" class="easyui-datagrid" style="height: 470px;"
		url="${pageContext.request.contextPath}/message/findAll.do" toolbar="#mess_toolbar" pagination="true"
		rownumbers="true" fitColumns="true" singleSelect="true"
		data-options="fit:false,border:false,pageSize:10,pageList:[10,20,30,40]">
		<thead>
			<tr>
				<th field="mid" width="50">留言编号</th>
				<th field="tel" width="50">联系电话</th>
				<th field="sex" width="50">性别</th>
				<th field="name" width="50">称呼</th>
				<th field="text" width="50">留言内容</th>		
				<th field="messTime" width="50">留言时间</th>
				<th field="messType" width="50">留言类型</th>


					
			</tr>
		</thead>
	</table>
	<div id="mess_toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="Add()">新增</a> 
			
			<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="Edit()">编辑</a> 
			
			<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="Delet()">删除</a>
	</div>

<!-- 对话框 -->
	<div id="mess_dlg" class="easyui-dialog" style="padding: 10px 20px"
		closed="true" buttons="#mess_dlg-buttons">
		<div class="ftitle">详细信息</div>
		<form id="mess_fm" method="post" novalidate>
			<div class="fitem">
				<label>电话:</label> <input name="tel" class="easyui-textbox">
			</div>

			<div class="fitem">
				<label>性别:</label> <!-- <input name="sex" class="easyui-textbox"> -->
					<select name="sex">
							<option value="男">男性♂</option>
							<option value="女">女性♀</option>
							<option value="其他">其他 ⚥</option>
					</select>					
			</div>

			<div class="fitem">
				<label>称呼:</label> <input name="name" class="easyui-textbox">
			</div>
		
			<div class="fitem">
				<label>留言内容:</label> <input name="text" class="easyui-textbox" style="width:250px;height:100px;">
			</div>		
			
			<div class="fitem">
				<label>留言时间:</label> <input name="messTime" class="easyui-datebox" vaildType="date">
			</div>			
			
			<div class="fitem">
				<label>留言类型:</label>
					<select name="messType">
							<option value="建议">建议</option>
							<option value="表扬">表扬</option>
							<option value="批评">批评</option>
							<option value="举报">举报</option>
					</select>					
				
			</div>			
		
		</form>
	</div>
	
	
	
	<div id="mess_dlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton c6"
			iconCls="icon-ok" onclick="Save()" style="width: 90px">保存</a>
			
			 <a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-cancel" onclick="javascript:$('#mess_dlg').dialog('close')" style="width: 90px">取消</a>
	</div>	
	
	<script type="text/javascript">
		var url;	
	
		function Add(){
			$('#mess_dlg').dialog('open').dialog('setTitle', '新增');
			$('#mess_fm').form('clear');//清除表单数据
			url = '${pageContext.request.contextPath}/message/addMessage.do';//从这里调用“Action”里的方法
		}
		
		
		
		function Edit() {
			var row = $('#mess_dg').datagrid('getSelected');
			if (row) {
				$('#mess_dlg').dialog('open').dialog('setTitle', '编辑');
				$('#mess_fm').form('clear');//清除表单数据
                $('#mess_fm').form('load',row);//重新加载编辑数据
				url = '${pageContext.request.contextPath}/message/updateMessage.do?mid=' + row.mid;//这里传ID
			}
		}
		
		
		
		function Save() {
			$('#mess_fm').form('submit', {
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
						$('#mess_dlg').dialog('close'); // close the dialog
						$('#mess_dg').datagrid('reload'); // reload the user data
					}
				}
			});
		}
		
		
		
		function Delet() {
			var row = $('#mess_dg').datagrid('getSelected');
			if (row) {
				$.messager.confirm('Confirm', '确定要删除吗?', function(r) {
					if (r) {
						//ajax调用
						$.post('${pageContext.request.contextPath}/message/deleteMessage.do', {
							mid : row.mid
						}, function(result) {
							if (result.success) {
								$('#mess_dg').datagrid('reload'); // reload the user data
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