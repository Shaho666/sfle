<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/easyui.css">
<link rel="stylesheet" type="text/css" href="../css/icon.css">
<link rel="stylesheet" type="text/css" href="../css/demo.css">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
</head>
<body>
	<form id="upload-form" action="/userFile/upload" method="post"
		enctype="multipart/form-data">
		<input type="file" id="upload" name="upload"/><br/> 
		<input type="submit" class="easyui-linkbutton c2" data-options="iconCls:'icon-save'" value="Upload">
	</form>
</body>
</html>