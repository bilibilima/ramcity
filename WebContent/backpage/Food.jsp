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
	
	<table id="food_dg" class="easyui-datagrid" style="height: 470px;"
		url="${pageContext.request.contextPath}/food/findAll.do" toolbar="#food_toolbar" pagination="true"
		rownumbers="true" fitColumns="true" singleSelect="true"
		data-options="fit:false,border:false,pageSize:10,pageList:[10,20,30,40]">
		<thead>
			<tr>
				<th field="foodId" width="50">美食编号</th>
				<th field="foodType" width="50">美食类型</th>
				<th field="fwriteId" formatter="foodFormat" width="50">文案编号</th>
				<th field="foodName" width="50">美食名称</th>
				<th field="foodPhoto" formatter="ImageFormat" width="50">美食图片</th>			
					
			</tr>
		</thead>
	</table>
	<div id="food_toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="Add()">新增</a> 
			
			<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="Edit()">编辑</a> 
			
			<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="Delet()">删除</a>
	</div>

<!-- 对话框 -->
	<div id="food_dlg" class="easyui-dialog" style="padding: 10px 20px"
		closed="true" buttons="#food_dlg-buttons">
		<div class="ftitle">详细信息</div>
		<form id="food_fm" method="post" enctype="multipart/form-data" novalidate>
			<div class="fitem">
				<label>美食类型:</label> <!-- <input name="wtype" class="easyui-textbox"> -->
					<select name="foodType">
							<option value="风味小吃">风味小吃</option>
							<option value="甜味饮品">甜味饮品</option>
							<option value="特色美味">特色美味</option>
					</select>						
			</div>

			<div class="fitem">
				<label>文案编号:</label> <!-- <input name="fwriteId" class="easyui-textbox"> -->
				 <input id="id_article" name="article.writeId"
					class="easyui-combobox" url="${pageContext.request.contextPath}/article/findList.do"
					valueField="writeId" textField="writeTitle" required="true"
					editable="false">
			</div>

			<div class="fitem">
				<label>美食名称:</label> <input name="foodName" class="easyui-textbox">
			</div>

			<div class="fitem">
				<label>美食图片:</label> <!-- <input name="foodPhoto" class="easyui-textbox"> -->
				<input id=“file1” type=“file” name="file1" class="easyui-filebox">
			</div>		
		</form>
	</div>
	
	
	
	<div id="food_dlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton c6"
			iconCls="icon-ok" onclick="Save()" style="width: 90px">保存</a>
			
			 <a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-cancel" onclick="javascript:$('#food_dlg').dialog('close')" style="width: 90px">取消</a>
	</div>	
	
	<script type="text/javascript">
		var url;
		//使用格式化显示数据，根据每条数据对应的外键字段显示对应的数据，即下拉框要显示的数据
		function foodFormat(value, row, rowindex) {

			return row.article.writeTitle;
		}		
		
		
		//图片格式化
		function ImageFormat(value, row, rowindex){
		    	return "<img src='${pageContext.request.contextPath}/"+value+"' height='50' />";
		    }	
		
		
		function Add(){
			$('#food_dlg').dialog('open').dialog('setTitle', '新增');
			$('#food_fm').form('clear');//清除表单数据
			url = '${pageContext.request.contextPath}/food/addFood.do';//从这里调用“Action”里的方法
			
			
		    var data = $('#id_article').combobox('getData');
		    if(data.length>0){
			  $('#id_article').combobox('select',data[0].writeId);
		    }; 			
			
		}
		
		
		
		function Edit() {
			var row = $('#food_dg').datagrid('getSelected');
			if (row) {
				$('#food_dlg').dialog('open').dialog('setTitle', '编辑');
				$('#food_fm').form('clear');//清除表单数据
                $('#food_fm').form('load',row);//重新加载编辑数据
				url = '${pageContext.request.contextPath}/food/updateFood.do?foodId=' + row.foodId;//这里传ID
			
			
			    var data = $('#id_article').combobox('getData');
			    if(goodsTypedata.length>0){
				  $('#id_article').combobox('select',row.article.writeId);
			    }; 			

			}
		}
		
		
		
		function Save() {
			$('#food_fm').form('submit', {
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
						$('#food_dlg').dialog('close'); // close the dialog
						$('#food_dg').datagrid('reload'); // reload the user data
					}
				}
			});
		}
		
		
		
		function Delet() {
			var row = $('#food_dg').datagrid('getSelected');
			if (row) {
				$.messager.confirm('Confirm', '确定要删除吗?', function(r) {
					if (r) {
						//ajax调用
						$.post('${pageContext.request.contextPath}/food/deleteFood.do', {
							foodId : row.foodId
						}, function(result) {
							if (result.success) {
								$('#food_dg').datagrid('reload'); // reload the user data
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