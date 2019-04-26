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
	
	<table id="spots_dg" class="easyui-datagrid" style="height: 470px;"
		url="${pageContext.request.contextPath}/spots/findAll.do" toolbar="#spots_toolbar" pagination="true"
		rownumbers="true" fitColumns="true" singleSelect="true"
		data-options="fit:false,border:false,pageSize:10,pageList:[10,20,30,40]">
		<thead>
			<tr>
				<th field="spotsId" width="50">景点编号</th>
				<th field="spotsType" width="50">景点类型</th>
				<th field="swriteId" formatter="spotsFormat" width="50">文案编号</th>
				<th field="spotsName" width="50">景点名称</th>
				<th field="spotsImage" formatter="ImageFormat" width="50">景点图片</th>		
					
			</tr>
		</thead>
	</table>
	<div id="spots_toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="Add()">新增</a> 
			
			<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="Edit()">编辑</a> 
			
			<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="Delet()">删除</a>
	</div>

<!-- 对话框 -->
	<div id="spots_dlg" class="easyui-dialog" style="padding: 10px 20px"
		closed="true" buttons="#spots_dlg-buttons">
		<div class="ftitle">详细信息</div>
		<form id="spots_fm" method="post" enctype="multipart/form-data" novalidate>


			<div class="fitem">
				<label>景点类型:</label> <!-- <input name="wtype" class="easyui-textbox"> -->
					<select name="spotsType">
							<option value="观光游览">观光游览</option>
							<option value="历史古迹">历史古迹</option>
							<option value="文学艺术">文学艺术</option>
							<option value="现代都市">现代都市</option>
					</select>				
				
				
				
			</div>

			<div class="fitem">
				<label>文案编号:<!-- </label> <input name="swriteId" class="easyui-textbox"> -->
				 <input id="id_art" name="article.writeId"
					class="easyui-combobox" url="${pageContext.request.contextPath}/article/findList.do"
					valueField="writeId" textField="writeTitle" required="true"
					editable="false">				
			</div>

			<div class="fitem">
				<label>景点名称:</label> <input name="spotsName" class="easyui-textbox">
			</div>

			<div class="fitem">
				<label>景点图片:</label> <!-- <input name="spotsImage" class="easyui-textbox"> -->
				<input id=“file1” type=“file” name="file1" class="easyui-filebox">
			</div>
		
		</form>
	</div>
	
	
	
	<div id="spots_dlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton c6"
			iconCls="icon-ok" onclick="Save()" style="width: 90px">保存</a>
			
			 <a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-cancel" onclick="javascript:$('#spots_dlg').dialog('close')" style="width: 90px">取消</a>
	</div>	
	
	<script type="text/javascript">
		var url;	

		//使用格式化显示数据，根据每条数据对应的外键字段显示对应的数据，即下拉框要显示的数据
		function spotsFormat(value, row, rowindex) {

			return row.article.writeTitle;
		}			
	
		
		function ImageFormat(value, row, rowindex){
		    	return "<img src='${pageContext.request.contextPath}/"+value+"' height='50' />";
		    }

		
	
		function Add(){
			$('#spots_dlg').dialog('open').dialog('setTitle', '新增');
			$('#spots_fm').form('clear');//清除表单数据
			url = '${pageContext.request.contextPath}/spots/addSpots.do';//从这里调用“Action”里的方法
		
		
		    var data = $('#id_art').combobox('getData');
		    if(data.length>0){
			  $('#id_art').combobox('select',data[0].writeId);
		    }; 			
		}
		
		
		
		function Edit() {
			var row = $('#spots_dg').datagrid('getSelected');
			if (row) {
				$('#spots_dlg').dialog('open').dialog('setTitle', '编辑');
				$('#spots_fm').form('clear');//清除表单数据
                $('#spots_fm').form('load',row);//重新加载编辑数据
				url = '${pageContext.request.contextPath}/spots/updateSpots.do?spotsId=' + row.spotsId;//这里传ID
			
			
			    var data = $('#id_art').combobox('getData');
			    if(goodsTypedata.length>0){
				  $('#id_art').combobox('select',row.article.writeId);
			    }; 				
			
			}
		}
		
		
		
		function Save() {
			$('#spots_fm').form('submit', {
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
						$('#spots_dlg').dialog('close'); // close the dialog
						$('#spots_dg').datagrid('reload'); // reload the user data
					}
				}
			});
		}
		
		
		
		function Delet() {
			var row = $('#spots_dg').datagrid('getSelected');
			if (row) {
				$.messager.confirm('Confirm', '确定要删除吗?', function(r) {
					if (r) {
						//ajax调用
						$.post('${pageContext.request.contextPath}/spots/deleteSpots.do', {
							spotsId : row.spotsId
						}, function(result) {
							if (result.success) {
								$('#spots_dg').datagrid('reload'); // reload the user data
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