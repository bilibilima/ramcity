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
	
	<table id="wri_dg" class="easyui-datagrid" style="height: 470px;"
		url="${pageContext.request.contextPath}/article/findAll.do" toolbar="#wri_toolbar" pagination="true"
		rownumbers="true" fitColumns="true" singleSelect="true"
		data-options="fit:false,border:false,pageSize:10,pageList:[10,20,30,40]">
		<thead>
			<tr>
				<th field="writeId" width="50">编号</th>
				<th field="wtype" width="50">文案类型</th>
				<th field="writeTime" width="50">发布时间</th>
				<th field="writeTitle" width="50">文案标题</th>
				<th field="writeText" width="50">文案内容</th>
				<th field="issuer" width="50">发布者</th>			
					
			</tr>
		</thead>
	</table>
	<div id="wri_toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="Add()">新增</a> 
			
			<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="Edit()">编辑</a> 
			
			<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="Delet()">删除</a>
	</div>

<!-- 对话框 -->
	<div id="wri_dlg" class="easyui-dialog" style="padding: 10px 20px"
		closed="true" buttons="#wri_dlg-buttons">
		<div class="ftitle">详细信息</div>
		<form id="wri_fm" method="post" novalidate>


			<div class="fitem">
				<label>文案类型:</label> <!-- <input name="wtype" class="easyui-textbox"> -->
					<select name="wtype">
							<option value="景点">(1)景点</option>
							<option value="历史">(2)历史</option>
							<option value="美食">(3)美食</option>
					</select>				
				
				
				
			</div>

			<div class="fitem">
				<label>发布时间:</label> <input name="writeTime" class="easyui-datebox" vaildType="date">
			</div>

			<div class="fitem">
				<label>文案标题:</label> <input name="writeTitle" class="easyui-textbox">
			</div>

			<div class="fitem">
				<label>文案内容:</label> <input name="writeText" class="easyui-textbox">
			</div>

			<div class="fitem">
				<label>发布者:</label>
				<input name="issuer" id="issuer" class="easyui-textbox">
			</div>
		
		</form>
	</div>
	
	
	
	<div id="wri_dlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton c6"
			iconCls="icon-ok" onclick="Save()" style="width: 90px">保存</a>
			
			 <a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-cancel" onclick="javascript:$('#wri_dlg').dialog('close')" style="width: 90px">取消</a>
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
			$('#wri_dlg').dialog('open').dialog('setTitle', '新增');
			$('#wri_fm').form('clear');//清除表单数据
			url = '${pageContext.request.contextPath}/article/addArticle.do';//从这里调用“Action”里的方法
		}
		
		
		
		function Edit() {
			var row = $('#wri_dg').datagrid('getSelected');
			if (row) {
				$('#wri_dlg').dialog('open').dialog('setTitle', '编辑');
				$('#wri_fm').form('clear');//清除表单数据
                $('#wri_fm').form('load',row);//重新加载编辑数据
				url = '${pageContext.request.contextPath}/article/updateArticle.do?writeId=' + row.writeId;//这里传ID
			}
		}
		
		
		
		function Save() {
			$('#wri_fm').form('submit', {
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
						$('#wri_dlg').dialog('close'); // close the dialog
						$('#wri_dg').datagrid('reload'); // reload the user data
					}
				}
			});
		}
		
		
		
		function Delet() {
			var row = $('#wri_dg').datagrid('getSelected');
			if (row) {
				$.messager.confirm('Confirm', '确定要删除吗?', function(r) {
					if (r) {
						//ajax调用
						$.post('${pageContext.request.contextPath}/article/deleteArticle.do', {
							writeId : row.writeId
						}, function(result) {
							if (result.success) {
								$('#wri_dg').datagrid('reload'); // reload the user data
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