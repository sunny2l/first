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
	<div style="height: 10%;width: 100%;background-color: green;"></div>
	<div style="height: 3%;width: 100%;"></div>
	<div class="row clearfix">
		<div class="col-md-4 column">
			<div class="panel-group" id="panel-713951">
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-713951" href="#panel-element-192907">Collapsible Group Item #1</a>
					</div>
					<div id="panel-element-192907" class="panel-collapse collapse">
						<div class="panel-body">
							Anim pariatur cliche...
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-713951" href="#panel-element-143524">Collapsible Group Item #2</a>
					</div>
					<div id="panel-element-143524" class="panel-collapse collapse">
						<div class="panel-body">
							Anim pariatur cliche...
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-8 column">
			<div class="carousel slide" id="carousel-670553">
				<ol class="carousel-indicators">
					<li data-slide-to="0" data-target="#carousel-670553">
					</li>
					<li data-slide-to="1" data-target="#carousel-670553">
					</li>
					<li data-slide-to="2" data-target="#carousel-670553">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item">
						<img alt="" src="${base}resource/img/3.jpg" />
						<div class="carousel-caption">
							<h4>
								First Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
					<div class="item active left">
						<img alt="" src="${base}resource/img/1.jpg" />
						<div class="carousel-caption">
							<h4>
								Second Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
					<div class="item next left">
						<img alt="" src="${base}resource/img/2.jpg" />
						<div class="carousel-caption">
							<h4>
								Third Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
				</div> <a class="left carousel-control" href="#carousel-670553" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-670553" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
	</div>
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