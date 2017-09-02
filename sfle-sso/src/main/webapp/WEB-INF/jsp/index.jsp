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
	<!-- <div style="margin: 20px 0;"></div>
	<div class="easyui-panel" title="Register"
		style="width: 400px; padding: 30px 60px">
		<div style="margin-bottom: 20px">
			<div>Email:</div>
			<input class="easyui-textbox" data-options=""
				style="width: 100%; height: 32px">
		</div>
		<div style="margin-bottom: 20px">
			<div>First Name:</div>
			<input class="easyui-textbox" style="width: 100%; height: 32px">
		</div>
		<div style="margin-bottom: 20px">
			<div>Last Name:</div>
			<input class="easyui-textbox" style="width: 100%; height: 32px">
		</div>
		<div style="margin-bottom: 20px">
			<div>Company:</div>
			<input class="easyui-textbox" style="width: 100%; height: 32px">
		</div>

		<div>
			<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
				style="width: 100%; height: 32px">Register</a>
		</div>
	</div> -->

	<div data-options="region:'north',border:false"
		style="height: 60px; background: #ffffff; padding: 10px">north
		region</div>
	<div data-options="region:'west',split:true,title:'West'"
		style="width: 150px; padding: 10px;">west content</div>
	<div
		data-options="region:'east',split:true,collapsed:true,title:'East'"
		style="width: 100px; padding: 10px;">east region</div>
	<div data-options="region:'south',border:false"
		style="height: 50px; background: #ffffff; padding: 10px;">south
		region</div>
	<div data-options="region:'center',title:'Center'">
		
		<div>
			<div class="easyui-panel" title="Login to system"
				style="width: 400px; padding: 30px 70px 20px 70px">
				<div style="margin-bottom: 10px">
					<input class="easyui-textbox"
						style="width: 100%; height: 40px; padding: 12px"
						data-options="prompt:'Username',iconCls:'icon-man',iconWidth:38">
				</div>
				<div style="margin-bottom: 20px">
					<input class="easyui-textbox" type="password"
						style="width: 100%; height: 40px; padding: 12px"
						data-options="prompt:'Password',iconCls:'icon-lock',iconWidth:38">
				</div>
				<div style="margin-bottom: 20px">
					<input type="checkbox" checked="checked"> <span>Remember
						me</span>
				</div>
				<div>
					<a href="#" class="easyui-linkbutton"
						data-options="iconCls:'icon-ok'"
						style="padding: 5px 0px; width: 100%;"> <span
						style="font-size: 14px;">Login</span>
					</a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>