<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<table border="1">
		<tr>
			<td>文件名称</td>
			<td>文件大小</td>
			<td>上传时间</td>
			<td>文件链接</td>
			<td>其他操作</td>
		</tr>
		<c:forEach items="${userFileList }" var="userFile">
			<tr>
				<td>${userFile.name }</td>
				<td><fmt:formatNumber type="number"
						value="${userFile.size / 1024  }" pattern="0.00"
						maxFractionDigits="2"></fmt:formatNumber>k</td>
				<td><fmt:formatDate value="${userFile.created }" type="both" /></td>
				<td><a href="${userFile.baseUrl }${userFile.storageUrl }">点击查看文件</a></td>
				<td><a
					href="/userFile/download?storagePath=${userFile.storageUrl }&fileName=${userFile.name }">download</a>/<a
					href="/userFile/hidden?fileId=${userFile.fileId }&userId=${userFile.userId }">delete</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>