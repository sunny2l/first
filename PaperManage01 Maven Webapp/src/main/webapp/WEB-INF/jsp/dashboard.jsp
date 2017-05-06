<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title class="page-title" >农场基本信息管理</title>
    <link rel="shortcut icon" href="${ctx}/static/img/favicon.ico"/>

</head>

<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-3">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <a  href="${ctx}/tabMember/list/page/1"><span class="label label-success pull-right">查看更多</span></a>
                    <h5>APP User</h5>
                </div>
                <div class="ibox-content">
                    <a href="${ctx}/tabMember/list/page/1" class="no-margins"><h1>APP用户管理</h1> </a>
                    <%--<div class="stat-percent font-bold text-success">98% <i class="fa fa-bolt"></i></div>--%>
                    <%--<small>Total income</small>--%>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <a href="${ctx}/tabMerchant/list/page/1"><span class="label label-info pull-right">查看更多</span></a>
                    <h5>Merchant</h5>
                </div>
                <div class="ibox-content">
                    <a href="${ctx}/tabMerchant/list/page/1" class="no-margins"><h1>商户管理</h1> </a>
                    <%--<div class="stat-percent font-bold text-info">20% <i class="fa fa-level-up"></i></div>--%>
                    <%--<small>New orders</small>--%>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <a href="${ctx}/tabFarmproduct/list/page/1"><span class="label label-primary pull-right">查看更多</span></a>
                    <h5>Product</h5>
                </div>
                <div class="ibox-content">
                    <a href="${ctx}/tabFarmproduct/list/page/1" class="no-margins"><h1>产品管理</h1> </a>
                    <%--<div class="stat-percent font-bold text-navy">44% <i class="fa fa-level-up"></i></div>--%>
                    <%--<small>New visits</small>--%>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <a href="${ctx}/tabPackage/list/page/1"><span class="label label-danger pull-right">查看更多</span></a>
                    <h5>Package</h5>
                </div>
                <div class="ibox-content">
                    <a href="${ctx}/tabPackage/list/page/1" class="no-margins"><h1>套餐管理</h1> </a>
                    <%--<div class="stat-percent font-bold text-danger">38% <i class="fa fa-level-down"></i></div>--%>
                    <%--<small>In first month</small>--%>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <a href="${ctx}/tabFarmorder/list/page/1"><span class="label label-success pull-right">查看更多</span></a>
                    <h5>Order</h5>
                </div>
                <div class="ibox-content">
                    <a href="${ctx}/tabFarmorder/list/page/1" class="no-margins"><h1>订单管理</h1> </a>
                    <%--<div class="stat-percent font-bold text-success">98% <i class="fa fa-bolt"></i></div>--%>
                    <%--<small>Total income</small>--%>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <a href="${ctx}/tabAdvertisement/list/page/1"><span class="label label-info pull-right">查看更多</span></a>
                    <h5>Advertisement</h5>
                </div>
                <div class="ibox-content">
                    <a href="${ctx}/tabAdvertisement/list/page/1" class="no-margins"><h1>广告管理</h1> </a>
                    <%--<div class="stat-percent font-bold text-info">20% <i class="fa fa-level-up"></i></div>--%>
                    <%--<small>New orders</small>--%>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <a href="${ctx}/tabFarmvedio/list/page/1" ><span class="label label-primary pull-right">查看更多</span></a>
                    <h5>Vedio</h5>
                </div>
                <div class="ibox-content">
                    <a href="${ctx}/tabFarmvedio/list/page/1" class="no-margins"><h1>视频管理</h1> </a>
                    <%--<div class="stat-percent font-bold text-navy">44% <i class="fa fa-level-up"></i></div>--%>
                    <%--<small>New visits</small>--%>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <a href="${ctx}/tabPackageLogistic/list/page/1"><span class="label label-danger pull-right">查看更多</span></a>
                    <h5>Logistic</h5>
                </div>
                <div class="ibox-content">
                    <a href="${ctx}/tabPackageLogistic/list/page/1" class="no-margins"><h1>配送信息管理</h1> </a>
                    <%--<div class="stat-percent font-bold text-danger">38% <i class="fa fa-level-down"></i></div>--%>
                    <%--<small>In first month</small>--%>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <a href="${ctx}/tabCoupon/list/page/1"><span class="label label-success pull-right">查看更多</span></a>
                    <h5>Coupon</h5>
                </div>
                <div class="ibox-content">
                    <a href="${ctx}/tabCoupon/list/page/1" class="no-margins"><h1>优惠券管理</h1> </a>
                    <%--<div class="stat-percent font-bold text-success">98% <i class="fa fa-bolt"></i></div>--%>
                    <%--<small>Total income</small>--%>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <a href="${ctx}/tabWebhook/list/page/1"><span class="label label-info pull-right">查看更多</span></a>
                    <h5>Webhook</h5>
                </div>
                <div class="ibox-content">
                    <a href="${ctx}/tabWebhook/list/page/1" class="no-margins"><h1>财务管理</h1> </a>
                    <%--<div class="stat-percent font-bold text-info">20% <i class="fa fa-level-up"></i></div>--%>
                    <%--<small>New orders</small>--%>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <a href="${ctx}/tabMerchant/list/page/1"><span class="label label-primary pull-right">查看更多</span></a>
                    <h5>Evaluate</h5>
                </div>
                <div class="ibox-content">
                    <a href="${ctx}/tabMerchant/list/page/1" class="no-margins"><h1>评价管理</h1> </a>
                    <%--<div class="stat-percent font-bold text-navy">44% <i class="fa fa-level-up"></i></div>--%>
                    <%--<small>New visits</small>--%>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <a  href="${ctx}/tabSuggest/list/page/1"><span class="label label-danger pull-right">查看更多</span></a>
                    <h5>Suggest</h5>
                </div>
                <div class="ibox-content">
                    <a href="${ctx}/tabSuggest/list/page/1" class="no-margins"><h1>意见管理</h1> </a>
                    <%--<div class="stat-percent font-bold text-danger">38% <i class="fa fa-level-down"></i></div>--%>
                    <%--<small>In first month</small>--%>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <%--<h5>Orders</h5>--%>
                    <div class="pull-right">
                        <div class="btn-group">
                            <%--<button type="button" class="btn btn-xs btn-white active">Today</button>--%>
                            <%--<button type="button" class="btn btn-xs btn-white">Monthly</button>--%>
                            <%--<button type="button" class="btn btn-xs btn-white">Annual</button>--%>
                        </div>
                    </div>
                </div>
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-lg-9">
                            <div class="flot-chart">
                                <div class="flot-chart-content" id="flot-dashboard-chart"></div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <ul class="stat-list">
                                <li>
                                    <h2 class="no-margins">2,346</h2>
                                    <%--<small>Total orders in period</small>--%>
                                    <div class="stat-percent">48% <i class="fa fa-level-up text-navy"></i></div>
                                    <div class="progress progress-mini">
                                        <div style="width: 48%;" class="progress-bar"></div>
                                    </div>
                                </li>
                                <li>
                                    <h2 class="no-margins ">4,422</h2>
                                    <%--<small>Orders in last month</small>--%>
                                    <div class="stat-percent">60% <i class="fa fa-level-down text-navy"></i></div>
                                    <div class="progress progress-mini">
                                        <div style="width: 60%;" class="progress-bar"></div>
                                    </div>
                                </li>
                                <li>
                                    <h2 class="no-margins ">9,180</h2>
                                    <%--<small>Monthly income from orders</small>--%>
                                    <div class="stat-percent">22% <i class="fa fa-bolt text-navy"></i></div>
                                    <div class="progress progress-mini">
                                        <div style="width: 22%;" class="progress-bar"></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
</div>
</div>
</body>
</html>
