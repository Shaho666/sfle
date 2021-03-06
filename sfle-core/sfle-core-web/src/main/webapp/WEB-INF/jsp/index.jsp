<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome to sfle!</title>
<link rel="stylesheet" type="text/css"
	href="../js/jquery-easyui-1.5.2/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="../js/jquery-easyui-1.5.2/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="../js/jquery-easyui-1.5.2/demo/demo.css">
<script type="text/javascript"
	src="../js/jquery-easyui-1.5.2/jquery.min.js"></script>
<script type="text/javascript"
	src="../js/jquery-easyui-1.5.2/jquery.easyui.min.js"></script>
<script type="text/javascript">
	function addTab(title, url) {
		if ($('#tt').tabs('exists', title)) {
			$('#tt').tabs('select', title);
		} else {
			var content = '<iframe scrolling="auto" frameborder="0"  src="'
					+ url + '" style="width:100%;height:100%;"></iframe>';
			$('#tt').tabs('add', {
				title : title,
				content : content,
				closable : true
			});
		}
	}
</script>
</head>
<body class="easyui-layout">

	<!-- <a href="/userFile/add">upload file</a>
	<br />
	<a href="/userFile/list?userId=1">file list</a> -->

	<!-- north part -->
	<div data-options="region:'north'" style="height: 50px">
		<div align="center">
			<h2>Welcome to sfle</h2>
		</div>
	</div>
	<!-- north part end -->

	<!-- south part -->
	<div data-options="region:'south',split:true" style="height: 50px;">
		<h2>@Copyright</h2>
	</div>
	<!-- south part end -->

	<!-- east part -->
	<div data-options="region:'east',split:true" title=""
		style="width: 20%;">
		<ul class="easyui-tree"
			data-options="url:'tree_data1.json',method:'get',animate:true,dnd:true"></ul>
	</div>
	<!-- east part end -->

	<!-- west part -->
	<div data-options="region:'west',split:true,iconCls:'icon-ok'"
		title="功能" style="width: 15%;">
		<div class="easyui-accordion" data-options="fit:true,border:true">
			<div title="文件列表" iconCls="icon-ok"
				style="overflow: auto; padding: 10px;">
				<h3 style="color: #0099FF;">文件显示面板</h3>
				<ul>
					<li><a href="javascript:void(0)"
						onclick="addTab('查看','/userFile/list?userId=1')">文件列表</a></li>
				</ul>
			</div>
			<div title="文件上传" iconCls="icon-ok"
				style="overflow: auto; padding: 10px;">
				<h3 style="color: #0099FF;">文件上传面板</h3>
				<ul>
					<li><a href="javascript:void(0)"
						onclick="addTab('上传','/userFile/add')">文件上传</a></li>
				</ul>
			</div>
			<div title="Tree Menu">
				<ul id="tt1" class="easyui-tree">
					<li><span>Folder1</span>
						<ul>
							<li><span>Sub Folder 1</span>
								<ul>
									<li><span>File 11</span></li>
									<li><span>File 12</span></li>
									<li><span>File 13</span></li>
								</ul></li>
							<li><span>File 2</span></li>
							<li><span>File 3</span></li>
						</ul></li>
					<li><span>File2</span></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- west part end -->

	<!-- center part -->
	<div data-options="region:'center',title:'详细功能',iconCls:'icon-ok'">
		<div id="tt" class="easyui-tabs" style="height: 100%; width: 100%;">

		</div>
		<!-- <div class="easyui-tabs"
				data-options="fit:true,border:false,plain:true">

				<div title="About" data-options="href:'_content.html'"
					style="padding: 10px"></div>
				<div title="DataGrid" style="padding: 5px">
					<table class="easyui-datagrid"
						data-options="url:'datagrid_data1.json',method:'get',singleSelect:true,fit:true,fitColumns:true">
						<thead>
							<tr>
								<th data-options="field:'itemid'" width="80">Item ID</th>
								<th data-options="field:'productid'" width="100">Product ID</th>
								<th data-options="field:'listprice',align:'right'" width="80">List
									Price</th>
								<th data-options="field:'unitcost',align:'right'" width="80">Unit
									Cost</th>
								<th data-options="field:'attr1'" width="150">Attribute</th>
								<th data-options="field:'status',align:'center'" width="50">Status</th>
							</tr>
						</thead>
					</table>
				</div>
			</div> -->
	</div>
	<!-- center part end -->


</body>
</html>