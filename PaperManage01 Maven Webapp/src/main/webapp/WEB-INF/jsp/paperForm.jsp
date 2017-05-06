<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<title>修改论文</title>
<link rel="shortcut icon" href="${ctx}/static/img/favicon.ico" />
<!-- 引入各种CSS样式表 -->
<link rel="stylesheet" href="${ctx}/static/css/bootstrap.css">
<link rel="stylesheet" href="${ctx}/static/css/font-awesome.css">
<link rel="stylesheet" href="${ctx}/static/css/index.css">
<!-- 修改自Bootstrap官方Demon，你可以按自己的喜好制定CSS样式 -->
<link rel="stylesheet" href="${ctx}/static/css/font-change.css">
<!-- 将默认字体从宋体换成微软雅黑（个人比较喜欢微软雅黑，移动端和桌面端显示效果比较接近） -->
<link rel="stylesheet"
	href="${ctx}/static/jqPagination/css/jqpagination.css">
<script type="text/javascript"
	src="${ctx}/static/js/jquery-1.12.3.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${ctx}/static/jqPagination/js/jquery.jqpagination.js"></script>
	<script type="text/javascript"
	src="${ctx}/static/js/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
	<script type="text/javascript"
	src="${ctx}/static/js/plugins/jquery-validation/dist/localization/messages_zh.js"></script>
</head>
<body>
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-lg-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5 class="page-title">修改论文</h5>
					</div>
					<div class="ibox-content">
						<form method="post" class="form-horizontal"
							action="${ctx}/paper/update/${pagenum}">
							<input type="hidden" name="id" value="${paper.id}" required>
							<div class="form-group">
								<div class="col-sm-10">
									<div class="row">
										<label class="col-sm-2 control-label">论文题目：</label>
										<div class="col-md-2">
											<input type="text" id="title" name="title"
												class="form-control" value="${paper.title}" required>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-10">
									<div class="row">
										<label class="col-sm-2 control-label">类型：</label>
										<div class="col-md-2">
											<select class="form-control" name="type">
												<option value="${paper.type}" selected>${typename}</option>
												<c:forEach items="${typeList}" var="type" varStatus="status">
													<option value="${type.code}">${type.codename}</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-10">
									<div class="row">
										<label class="col-sm-2 control-label">作者：</label>
										<div class="col-md-2">
											<input type="text" id="createdby" name="createdby"
												class="form-control" value="${paper.createdby}">
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-10">
									<div class="row">
										<label for="papersummary" class="col-sm-2 control-label">论文摘要：</label>
										<div class="col-sm-8">
											<textarea id="papersummary" name="papersummary"
												value="${paper.papersummary}" required>
                                   </textarea>
											<label id="checkSummary"></label>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-10">
									<div class="row">
										<label class="col-sm-2 control-label">修改人：</label>
										<div class="col-md-2">
											<input type="text" id="modifyby" name="modifyby"
												class="form-control" value="${paper.modifyby}">
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="logoUpDropzone" class="col-sm-2 control-label">论文内容:</label>
								<div class="col-sm-8">
									<input id="logoUpDropzone" name="file" type="file"
										class="file-loading" enctype="multipart/form-data" required>
								</div>
							</div>
							<div class="hr-line-dashed"></div>
							<div class="form-group">
								<label for="submit_btn" class="col-sm-2 control-label"></label>
								<div class="col-sm-8">
									<input id="submit_btn" class="btn btn-primary" type="submit"
										value="确认" />&nbsp; <input id="cancel_btn" class="btn"
										type="button" value="返回" onclick="history.back()" />
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		
	</script>
</body>
</html>
