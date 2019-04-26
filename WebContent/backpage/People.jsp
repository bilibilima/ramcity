<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
	
	<table id="pe_dg" class="easyui-datagrid" style="height: 470px;"
		url="${pageContext.request.contextPath}/people/findAll.do" toolbar="#pe_toolbar" pagination="true"
		rownumbers="true" fitColumns="true" singleSelect="true"
		data-options="fit:false,border:false,pageSize:10,pageList:[10,20,30,40]">
		<thead>
			<tr>
				<th field="peopleId" width="50">编号</th>
				<th field="peopleName" width="50">账号</th>
				<th field="passWord" width="50">密码</th>
				<th field="status" width="50">身份</th>
				<th field="qq" width="50">QQ</th>
				<th field="mail" width="50">邮箱</th>
				<th field="address" width="50">地点</th>				
				
				
			</tr>
		</thead>
	</table>
	<div id="pe_toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="Add()">新增</a> 
			
			<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="Edit()">编辑</a> 
			
			<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="Delet()">删除</a>
	</div>

<!-- 对话框 -->
	<div id="pe_dlg" class="easyui-dialog" style="padding: 10px 20px"
		closed="true" buttons="#pe_dlg-buttons">
		<div class="ftitle">详细信息</div>
		<form id="pe_fm" method="post" novalidate>


			<div class="fitem">
				<label>账号:</label> <input name="peopleName" class="easyui-textbox">
			</div>

			<div class="fitem">
				<label>密码:</label> <input name="passWord" class="easyui-textbox">
			</div>

			<div class="fitem">
				<label>身份:</label> <!-- <input name="status" class="easyui-textbox"> -->
					<select name="status">
							<option value="1">(1)管理人员</option>
							<option value="2">(2)联系人员</option>
					</select> 
			</div>

			<div class="fitem">
				<label>QQ:</label> <input name="qq" class="easyui-textbox">
			</div>

			<div class="fitem">
				<label>邮箱:</label> <input name="mail" class="easyui-textbox" validType="email">
			</div>

			<div class="fitem">
				<label>地点:</label> <input name="address" class="easyui-textbox">
			</div>

		
		</form>
	</div>
	
	
	
	<div id="pe_dlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton c6"
			iconCls="icon-ok" onclick="Save()" style="width: 90px">保存</a>
			
			 <a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-cancel" onclick="javascript:$('#pe_dlg').dialog('close')" style="width: 90px">取消</a>
	</div>	
	
	<script type="text/javascript">
		var url;	
		
		function Add(){
			$('#pe_dlg').dialog('open').dialog('setTitle', '新增');
			$('#pe_fm').form('clear');//清除表单数据
			url = '${pageContext.request.contextPath}/people/addPeople.do';//从这里调用“Action”里的方法
		}
		
		
		
		function Edit() {
			var row = $('#pe_dg').datagrid('getSelected');
			if (row) {
				$('#pe_dlg').dialog('open').dialog('setTitle', '编辑');
				$('#pe_fm').form('clear');//清除表单数据
                $('#pe_fm').form('load',row);//重新加载编辑数据
				url = '${pageContext.request.contextPath}/people/updatePeople.do?peopleId=' + row.peopleId;//这里传ID
			}
		}
		
		
		
		function Save() {
			$('#pe_fm').form('submit', {
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
						$('#pe_dlg').dialog('close'); // close the dialog
						$('#pe_dg').datagrid('reload'); // reload the user data
					}
				}
			});
		}
		
		
		
		function Delet() {
			var row = $('#pe_dg').datagrid('getSelected');
			if (row) {
				$.messager.confirm('Confirm', '确定要删除吗?', function(r) {
					if (r) {
						//ajax调用
						$.post('${pageContext.request.contextPath}/people/deletePeople.do', {
							peopleId : row.peopleId
						}, function(result) {
							if (result.success) {
								$('#pe_dg').datagrid('reload'); // reload the user data
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