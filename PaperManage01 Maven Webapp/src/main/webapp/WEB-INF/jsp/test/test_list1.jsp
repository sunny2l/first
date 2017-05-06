<%@ page language="java" import="java.util.*,com.inspur.entity.TestEntity" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String path=request.getContextPath(); 
request.setCharacterEncoding("UTF-8");
String basePath=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
pageContext.setAttribute( "base", basePath); 
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test page</title>
<link rel="stylesheet" href="${base}resource/css/bootstrap.min.css">
<script src="${base}resource/js/jquery.min.js"></script>
<script src="${base}resource/js/bootstrap.min.js"></script>
<script type="text/javascript">
    var userList = "${userList}";
</script>
</head>
<body>
<div class="container">
	<div>
		<table class="table">
			<caption>上下文表格布局</caption>
			<thead>
				<tr>
					<th>id</th>
					<th>uname</th>
					<th>operate</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="s" items="${userList}">
					<tr class="danger">
					<td>${s.id}</td>
					<td>${s.uname}</td>
					<td><a href="${base}toViewInfo?id=${s.id}">viewInfo</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
</div>
</body>
</html>