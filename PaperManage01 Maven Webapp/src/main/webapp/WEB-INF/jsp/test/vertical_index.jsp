<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Vertical Split Demo</title>
		<meta name="description" content="overview &amp; stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<link rel="stylesheet" href="${base}resource/css/bootstrap.min.css">
		<%-- <link rel="stylesheet" href="${base}resource/css/mycss/sidebar.css"> --%>
		<script src="${base}resource/js/jquery.min.js"></script>
		<script src="${base}resource/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			$(function() {
				var height=document.documentElement.clientHeight;
				document.getElementById('iframe-page-content').style.height=height+'px';
			});
			
			var menuClick = function(menuUrl) {
				$("#iframe-page-content").attr('src',menuUrl);
			};
		</script>
	</head>

<body>
	<div>
		<div>
			<nav class="navbar navbar-default" role="navigation">
				<div class="container-fluid">
					<div class="navbar-header">
						<a class="navbar-brand" href="#">菜鸟教程</a>
					</div>
				<div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="#" onclick="menuClick('${base}toViewInfo?id=${s.id}')">iOS</a></li>
					<li><a href="#">SVN</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							Java
							<b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li><a href="#" onclick="menuClick('${base}toTestList')">jmeter</a></li>
							<li><a href="#">EJB</a></li>
							<li><a href="#">Jasper Report</a></li>
							<li class="divider"></li>
							<li><a href="#">分离的链接</a></li>
							<li class="divider"></li>
							<li><a href="#">另一个分离的链接</a></li>
						</ul>
					</li>
				</ul>
				</div>
				</div>
			</nav>
		</div>
		
		<div>
			<div class="page-content">
				<iframe id="iframe-page-content" src="${base}resource/html/myindex.jsp" width="100%"  frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"></iframe>
			</div>	
		</div>
	</div>
	</body>
</html>
