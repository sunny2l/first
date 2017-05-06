<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!-- BEGIN HEADER-->
<div class="row border-bottom">
    <nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i>
            </a>
            <form role="search" class="navbar-form-custom" action="search_results.html">
                <div class="form-group">
                    <input type="text" class="form-control"
                           name="top-search" id="top-search">
                </div>
            </form>
        </div>
        <ul class="nav navbar-top-links navbar-right">
            <li>
                <span class="m-r-sm text-muted welcome-message"></span>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                    <i class="fa fa-envelope"></i> <span class="label label-warning"><div id="paid"></div></span>
                </a>
                <ul class="dropdown-menu dropdown-messages">
                    <%--<li>--%>
                    <%--<div class="dropdown-messages-box">--%>
                    <%--<a href="#" class="pull-left">--%>
                    <%--<img alt="image" class="img-circle" src="${ctx}/static/img/a7.jpg">--%>
                    <%--</a>--%>
                    <%--<div>--%>
                    <%--<small class="pull-right">46h ago</small>--%>
                    <%--<strong>Mike Loreipsum</strong> started following <strong>Monica Smith</strong>.--%>
                    <%--<br>--%>
                    <%--<small class="text-muted">3 days ago at 7:58 pm - 10.06.2014</small>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</li>--%>
                    <%--<li class="divider"></li>--%>
                    <%--<li>--%>
                    <%--<div class="dropdown-messages-box">--%>
                    <%--<a href="profile.html" class="pull-left">--%>
                    <%--<img alt="image" class="img-circle" src="${ctx}/static/img/a4.jpg">--%>
                    <%--</a>--%>
                    <%--<div>--%>
                    <%--<small class="pull-right text-navy">5h ago</small>--%>
                    <%--<strong>Chris Johnatan Overtunk</strong> started following <strong>Monica--%>
                    <%--Smith</strong>. <br>--%>
                    <%--<small class="text-muted">Yesterday 1:21 pm - 11.06.2014</small>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</li>--%>
                    <%--<li class="divider"></li>--%>
                    <%--<li>--%>
                    <%--<div class="dropdown-messages-box">--%>
                    <%--<a href="profile.html" class="pull-left">--%>
                    <%--<img alt="image" class="img-circle" src="${ctx}/static/img/profile.jpg">--%>
                    <%--</a>--%>
                    <%--<div>--%>
                    <%--<small class="pull-right">23h ago</small>--%>
                    <%--<strong>Monica Smith</strong> love <strong>Kim Smith</strong>. <br>--%>
                    <%--<small class="text-muted">2 days ago at 2:30 am - 11.06.2014</small>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</li>--%>
                    <%--<li class="divider"></li>--%>
                    <li>
                        <div class="text-center link-block">
                            <a href="${ctx}/tabFarmorder/searchByState/1/1">
                                <i class="fa fa-envelope"></i> <strong>查看全部已付款订单</strong>
                            </a>
                        </div>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                    <i class="fa fa-bell"></i> <span class="label label-primary"><div id="confirm"></div></span>
                </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <%--<li>--%>
                    <%--<a href="mailbox.html">--%>
                    <%--<div>--%>
                    <%--<i class="fa fa-envelope fa-fw"></i> You have 16 messages--%>
                    <%--<span class="pull-right text-muted small">4 minutes ago</span>--%>
                    <%--</div>--%>
                    <%--</a>--%>
                    <%--</li>--%>
                    <%--<li class="divider"></li>--%>
                    <%--<li>--%>
                    <%--<a href="profile.html">--%>
                    <%--<div>--%>
                    <%--<i class="fa fa-twitter fa-fw"></i> 3 New Followers--%>
                    <%--<span class="pull-right text-muted small">12 minutes ago</span>--%>
                    <%--</div>--%>
                    <%--</a>--%>
                    <%--</li>--%>
                    <%--<li class="divider"></li>--%>
                    <%--<li>--%>
                    <%--<a href="grid_options.html">--%>
                    <%--<div>--%>
                    <%--<i class="fa fa-upload fa-fw"></i> Server Rebooted--%>
                    <%--<span class="pull-right text-muted small">4 minutes ago</span>--%>
                    <%--</div>--%>
                    <%--</a>--%>
                    <%--</li>--%>
                    <%--<li class="divider"></li>--%>
                    <li>
                        <div class="text-center link-block">
                            <a href="${ctx}/tabFarmorder/searchByState/3/1">
                                <i class="fa fa-bell"></i><strong>查看全部确认收货订单</strong>
                            </a>
                        </div>
                    </li>
                </ul>
            </li>


            <li>
                <a href="${ctx}/logout">
                    <i class="fa fa-sign-out"></i> 退出
                </a>
            </li>
            <li>
                <%--<input type="button" class="fa fa-refresh" id="sendButton" value="刷新"/>--%>
                <i class="fa fa-refresh"  id="sendButton"></i>
            </li>
        </ul>

        <script>
            function message() {
                $.ajax({
                    type: "post",
                    url: "${ctx}/tabFarmorder/getSum",
                    dataType: "text",
                    global: false,
                    success: function (data) {
                        var words = data.split(',');
                        document.getElementById("paid").innerHTML = words[0];
                        document.getElementById("confirm").innerHTML=words[1];
                    }
                })
            }
            $("#sendButton").bind("click",message);

            document.body.onload=message;
        </script>
    </nav>
</div>
<!-- END HEADER-->
