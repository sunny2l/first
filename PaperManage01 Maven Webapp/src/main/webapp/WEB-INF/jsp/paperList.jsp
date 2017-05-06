<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<title>农产品管理</title>
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
</head>

<body>
	<div class="wrapper wrapper-content animated fadeInRight">

		<div class="row">
			<div class="col-lg-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5 class="page-title">论文列表</h5>
						<!-- <div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i> </a> <a
								class="dropdown-toggle" data-toggle="dropdown" href="#"> <i
								class="fa fa-wrench"></i> </a>
							<ul class="dropdown-menu dropdown-user">
								<li><a href="#">Config option 1</a>
								</li>
								<li><a href="#">Config option 2</a>
								</li>
							</ul>
							<a class="close-link"> <i class="fa fa-times"></i> </a>
						</div> -->
					</div>
					<div class="ibox-content">
						<div class="row">
							<div class="col-sm-3">
								<form action="${ctx}/paper/searchByTitle/page/1" method="get">
									<div class="input-group">
										<input type="text" placeholder="请输入关键字"
											class="input-sm form-control" name="key"> <span
											class="input-group-btn"><button type="submit"
												class="btn btn-sm btn-primary">查找</button> </span>&nbsp;&nbsp; <span
											class="input-group-btn"><a
											href="${ctx}/tabFarmproduct/list/page/1">
												<button type="button" class="btn btn-sm btn-primary">显示全部</button>
										</a> </span>
									</div>
								</form>
							</div>
							<div class="col-sm-2">
								<form action="${ctx}/paper/searchByType/page/1" method="get">
									<div class="input-group">
										<select class="form-control" name="type">
											<c:forEach items="${typeList}" var="type" varStatus="status">
												<option value="${type.code}">${type.codename}</option>
											</c:forEach>
										</select> <span class="input-group-btn"><button type="submit"
												class="btn btn-sm btn-primary">查找</button> </span>
									</div>
								</form>
							</div>
							<div class="col-sm-6">
								<a href="${ctx}/paper/create" class="btn btn-primary btn-xs "
									style="float: right">上传论文</a>
							</div>
						</div>
						<table class="footable table table-stripped toggle-arrow-tiny"
							data-page-size="5">
							<thead>
								<tr>
									<th>论文主题</th>
									<th>作者</th>
									<th>论文类型</th>
									<th>发表时间</th>
									<th>修改时间</th>
									<th>修改</th>
									<th>删除</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${myPage.content}" var="paper"
									varStatus="status">
									<tr>
										<td>${paper.title}</td>
										<td>${paper.createdby}</td>
										<td><c:choose>
												<c:when test="${paper.type==1}">
                                                                                                                                                               应用
                                        </c:when>
												<c:when test="${paper.type==2}">
                                                                                                                                                                技术
                                        </c:when>
												<c:when test="${paper.type==3}">
                                                                                                                                                                研究
                                        </c:when>
												<c:when test="${paper.type==4}">
                                                                                                                                                                  科研
                                        </c:when>
												<c:otherwise>
                                                                                                                                                                理论
                                        </c:otherwise>
											</c:choose></td>
										<td>${paper.creationdate}</td>
										<td>${paper.modifydate}</td>
										<td><a
											href="${ctx}/paper/update/${paper.id}/${myPage.currentPage}"><i
												class="fa fa-pencil text-warning"></i> </a>
										</td>
										<td><a href=""
											onclick="javascript:return delConfirm('${ctx}/paper/delete/${paper.id}')"><i
												class="glyphicon glyphicon-remove text-danger"></i> </a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<br>
				<div class="col-lg-12 text-center">
					<div class="pagination">
						<a href="#" class="btn btn-white" data-action="first">&laquo;</a>
						<a href="#" class="btn btn-white" data-action="previous">上一页</a> <input
							class="btn btn-white" type="text" readonly="readonly"
							style="color: #1ab394" /> <a href="#" class="btn btn-white"
							data-action="next">下一页</a> <a href="#" class="btn btn-white"
							data-action="last">&raquo;</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%-- <div hidden>
		<jsp:include page="/WEB-INF/layouts/menu.jsp"></jsp:include>
	</div> --%>
	<script>
    function delConfirm(del_url) {
        var msg="删除后不可恢复，确认删除？"
        if(confirm(msg)==true){
        location.href=del_url;
        return true;
        }else{
         return false;
        }
    }
    $('.pagination').jqPagination({
        link_string: '${ctx}/paper/list/page/{page_number}',
        current_page: ${myPage.currentPage}, //设置当前页 默认为1
        max_page: ${myPage.sumPage}, //设置最大页 默认为1
        page_string: '当前第{current_page}页,共{max_page}页',
        paged: function (page) {
            //回发事件。。。
            location.href = "${ctx}/paper/list/page/" + page
        }
    });
</script>
</body>
</html>



