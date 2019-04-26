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
	
	<table id="notic_dg" class="easyui-datagrid" style="height: 470px;"
		url="${pageContext.request.contextPath}/notic/findAll.do" toolbar="#notic_toolbar" pagination="true"
		rownumbers="true" fitColumns="true" singleSelect="true"
		data-options="fit:false,border:false,pageSize:10,pageList:[10,20,30,40]">
		<thead>
			<tr>
				<th field="noticId" width="50">公告编号</th>
				<th field="noticName" width="50">公告标题</th>
				<th field="noticText" width="50">公告内容</th>					
				<th field="noticTime" width="50">发布时间</th>
	
			</tr>
		</thead>
	</table>
	<div id="notic_toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="Add()">新增</a> 
			
			<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="Edit()">编辑</a> 
			
			<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="Delet()">删除</a>
	</div>

<!-- 对话框 -->
	<div id="notic_dlg" class="easyui-dialog" style="padding: 10px 20px"
		closed="true" buttons="#notic_dlg-buttons">
		<div class="ftitle">详细信息</div>
		<form id="notic_fm" method="post" novalidate>
			<div class="fitem">
				<label>公告标题:</label> <input name="noticName" class="easyui-textbox">
			</div>

			<div class="fitem">
				<label>公告内容:</label> <input name="noticText" class="easyui-textbox">
			</div>
			<div class="fitem">
				<label>发布时间:</label> <input name="noticTime" class="easyui-datebox" vaildType="date">
			</div>
		
		</form>
	</div>
	
	
	
	<div id="notic_dlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton c6"
			iconCls="icon-ok" onclick="Save()" style="width: 90px">保存</a>
			
			 <a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-cancel" onclick="javascript:$('#notic_dlg').dialog('close')" style="width: 90px">取消</a>
	</div>	
	
	<script type="text/javascript">
		var url;	
	
		//重新设置easy UI的时间格式
	     $.fn.datebox.defaults.formatter = function(date){
			var y = date.getFullYear();
			var m = date.getMonth()+1;
			var d = date.getDate();
			return y+'/'+m+'/'+d;
		}
	
		$.fn.datebox.defaults.parser = function(date){
			if(date){
				return  new Date(date)
			}else{
				return new Date();
			}
		} 		
				
		
		
		
		function Add(){
			$('#notic_dlg').dialog('open').dialog('setTitle', '新增');
			$('#notic_fm').form('clear');//清除表单数据
			url = '${pageContext.request.contextPath}/notic/addNotic.do';//从这里调用“Action”里的方法
		}
		
		
		
		function Edit() {
			var row = $('#notic_dg').datagrid('getSelected');
			if (row) {
				$('#notic_dlg').dialog('open').dialog('setTitle', '编辑');
				$('#notic_fm').form('clear');//清除表单数据
                $('#notic_fm').form('load',row);//重新加载编辑数据
				url = '${pageContext.request.contextPath}/notic/updateNotic.do?noticId=' + row.noticId;//这里传ID
			}
		}
		
		
		
		function Save() {
			$('#notic_fm').form('submit', {
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
						$('#notic_dlg').dialog('close'); // close the dialog
						$('#notic_dg').datagrid('reload'); // reload the user data
					}
				}
			});
		}
		
		
		
		function Delet() {
			var row = $('#notic_dg').datagrid('getSelected');
			if (row) {
				$.messager.confirm('Confirm', '确定要删除吗?', function(r) {
					if (r) {
						//ajax调用
						$.post('${pageContext.request.contextPath}/notic/deleteNotic.do', {
							noticId : row.noticId
						}, function(result) {
							if (result.success) {
								$('#notic_dg').datagrid('reload'); // reload the user data
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