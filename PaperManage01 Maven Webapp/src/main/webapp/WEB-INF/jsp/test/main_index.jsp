<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" /> 
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>iframe demo</title>
		<meta name="description" content="overview &amp; stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<link rel="stylesheet" href="${ctx}/static/css/bootstrap.css">
		<script type="text/javascript" src="${ctx}/static/js/jquery-1.12.3.min.js"></script>
		<script type="text/javascript" src="${ctx}/static/js/bootstrap.min.js"></script>
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
	<div style="width: 100%">
		<!-- 左侧菜单栏 -->
		<div id="main-container">
			<div id="sidebar" class="col-md-2 column">				
				<!-- 创建菜单树 -->
				<div class="col-md-12">
				<h1 style="color:blue">功能列表</h1>
                <ul id="main-nav" class="nav nav-tabs nav-stacked" style="">
                    <li>
                        <a href="#systemSetting" class="nav-header collapsed" data-toggle="collapse">
                            <i class="glyphicon glyphicon-cog"></i>用户管理
                               <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                        </a>
                        <ul id="systemSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
                            <li><a href="#" onclick="menuClick('${ctx}/paper/list/page/1')"><i class="glyphicon glyphicon-user"></i>用户列表</a></li>
                            <li><a href="#" onclick="menuClick('${base}toTestList')"><i class="glyphicon glyphicon-th-list"></i>bbb</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#systemSetting1" class="nav-header collapsed" data-toggle="collapse">
                            <i class="glyphicon glyphicon-cog"></i>论文管理
                               <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                        </a>
                        <ul id="systemSetting1" class="nav nav-list collapse secondmenu" style="height: 0px;">
                            <li><a href="#" onclick="menuClick('${ctx}/paper/list/page/1')"><i class="glyphicon glyphicon-asterisk"></i>论文列表</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-edit"></i>ddd</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-eye-open"></i>eee</a></li>
                        </ul>
                    </li>
                     <li>
                        <a href="#systemSetting2" class="nav-header collapsed" data-toggle="collapse">
                            <i class="glyphicon glyphicon-cog"></i>公共代码
                               <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                        </a>
                        <ul id="systemSetting2" class="nav nav-list collapse secondmenu" style="height: 0px;">
                            <li><a href="#" onclick="menuClick('${ctx}/paper/list/page/1')"><i class="glyphicon glyphicon-user"></i>用户列表</a></li>
                            <li><a href="#" onclick="menuClick('${base}toTestList')"><i class="glyphicon glyphicon-th-list"></i>bbb</a></li>
                        </ul>
                    </li>
                     <li>
                        <a href="#systemSetting3" class="nav-header collapsed" data-toggle="collapse">
                            <i class="glyphicon glyphicon-cog"></i>退出系统
                               <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                        </a>
                        <ul id="systemSetting3" class="nav nav-list collapse secondmenu" style="height: 0px;">
                            <li><a href="#" onclick="menuClick('${ctx}/paper/list/page/1')"><i class="glyphicon glyphicon-user"></i>用户列表</a></li>
                            <li><a href="#" onclick="menuClick('${base}toTestList')"><i class="glyphicon glyphicon-th-list"></i>bbb</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
		</div>
		<div class="col-md-10 column">
			<div class="breadcrumbs" id="breadcrumbs">
				<!-- 面包屑导航 -->
				<ul class="breadcrumb">
					<li>
						<a href="${ctx}/home">Home</a>
					</li>
					<li class="active">Dashboard</li>
				</ul>
			</div>
					
			<!-- 内容展示页 -->
			<div>
				<iframe id="iframe-page-content" src="${ctx}/content" width="100%"  frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"></iframe>
			</div>				
		</div><!-- /.main-content -->
		</div><!-- /.main-container -->
	</div>
</body>
</html>
