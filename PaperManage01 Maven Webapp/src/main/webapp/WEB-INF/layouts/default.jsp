<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="zh-cmn-Hant">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title >圣贤优农</title>

	<link href="${ctx}/static/css/bootstrap.min.css" rel="stylesheet">
	<link href="${ctx}/static/font-awesome/css/font-awesome.css" rel="stylesheet">
	<link href="${ctx}/static/css/plugins/toastr/toastr.min.css" rel="stylesheet">
	<link href="${ctx}/static/css/animate.css" rel="stylesheet">
	<link href="${ctx}/static/css/plugins/dropzone/basic.css" rel="stylesheet">
	<link href="${ctx}/static/css/plugins/dropzone/dropzone.css" rel="stylesheet">
	<link href="${ctx}/static/css/style.css" rel="stylesheet">
	<link rel="shortcut icon" href="${ctx}/static/img/favicon.ico"/>
	<link href="${ctx}/static/css/plugins/summernote/summernote.css" rel="stylesheet">
	<link href="${ctx}/static/css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
	<link href="${ctx}/static/css/plugins/chosen/chosen.css" rel="stylesheet">
	<link href="${ctx}/static/jqPagination/css/jqpagination.css" rel="stylesheet">
	<link href="${ctx}/static/css/plugins/footable/footable.core.css" rel="stylesheet">
	<link href="${ctx}/static/css/plugins/bootstrap-fileinput/fileinput.css" media="all" rel="stylesheet">
	<link  rel="stylesheet" href="${ctx}/static/css/jquery-validation/1.11.1/validate.css" />
	<!-- END STYLESHEETS -->
	<!-- Mainly scripts -->
	<script src="${ctx}/static/js/jquery-2.1.1.js"></script>
	<%--<script src="${ctx}/static/js/bootstrap.min.js"></script>--%>
	<script src="${ctx}/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script src="${ctx}/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<!-- Flot -->
	<script src="${ctx}/static/js/plugins/flot/jquery.flot.js"></script>
	<script src="${ctx}/static/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
	<script src="${ctx}/static/js/plugins/flot/jquery.flot.spline.js"></script>
	<script src="${ctx}/static/js/plugins/flot/jquery.flot.resize.js"></script>
	<script src="${ctx}/static/js/plugins/flot/jquery.flot.pie.js"></script>
	<script src="${ctx}/static/js/plugins/flot/jquery.flot.symbol.js"></script>
	<script src="${ctx}/static/js/plugins/flot/jquery.flot.time.js"></script>
	<!-- Peity -->
	<script src="${ctx}/static/js/plugins/peity/jquery.peity.min.js"></script>
	<script src="${ctx}/static/js/demo/peity-demo.js"></script>

	<!-- Custom and plugin javascript -->
	<script src="${ctx}/static/js/inspinia.js"></script>
	<script src="${ctx}/static/js/plugins/pace/pace.min.js"></script>

	<!-- jQuery UI -->
	<script src="${ctx}/static/js/plugins/jquery-ui/jquery-ui.min.js"></script>

	<!-- Jvectormap -->
	<script src="${ctx}/static/js/plugins/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
	<script src="${ctx}/static/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>

	<!-- EayPIE -->
	<script src="${ctx}/static/js/plugins/easypiechart/jquery.easypiechart.js"></script>


	<!-- Sparkline -->
	<script src="${ctx}/static/js/plugins/sparkline/jquery.sparkline.min.js"></script>


	<!-- Sparkline demo data  -->
	<script src="${ctx}/static/js/demo/sparkline-demo.js"></script>

	<%--<!-- ChartJS-->--%>
	<%--<script src="/static/js/plugins/chartJs/Chart.min.js"></script>--%>
	<%--<script src="/static/js/demo/chartjs-demo.js"></script>--%>



	<script src="${ctx}/static/js/bootbox.js"></script>
	<!-- Select2 -->
	<script src="${ctx}/static/js/plugins/select2/select2.full.min.js"></script>
	<script src="${ctx}/static/jqPagination/js/jquery.jqpagination.js"></script>
	<script src="${ctx}/static/js/plugins/validate/jquery.validate.min.js"></script>
	<!-- summernote -->
	<script src="${ctx}/static/js/plugins/summernote/summernote.min.js"></script>
	<script src="${ctx}/static/js/plugins/summernote/summernote-zh-CN.min.js"></script>
	<script src="${ctx}/static/js/jquery.counterup.min.js"></script>
	<%--file upload--%>
	<script src="${ctx}/static/js/plugins/bootstrap-fileinput/fileinput.js"></script>
	<script src="${ctx}/static/js/plugins/bootstrap-fileinput/locales/zh.js"></script>
	<script src="${ctx}/static/js/bootstrap.min.js"></script>
	<script src="${ctx}/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script src="${ctx}/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${ctx}/static/js/plugins/footable/footable.all.min.js"></script>
	<script src="${ctx}/static/js/plugins/chosen/chosen.jquery.js"></script>
	<script src="${ctx}/static/js/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
	<script src="${ctx}/static/js/plugins/jquery-validation/dist/additional-methods.min.js"></script>
	<%--dropzone--%>
	<script src="${ctx}/static/js/plugins/dropzone/dropzone.js"></script>
	<script src="${ctx}/static/js/plugins/toastr/toastr.min.js"></script>
	<script>
		jQuery(document).ready(function($) {
			$('.counter').counterUp({
				delay: 100,
				time: 1200
			});
			$('.summernote').summernote({
				lang: 'zh-CN',
				height: 200,                 // set editor height
				minHeight: null,             // set minimum height of editor
				maxHeight: null,             // set maximum height of editor
			});
		});
		$(document).ready(function() {
			$('.chart').easyPieChart({
				barColor: '#f8ac59',
				scaleColor: false,
				scaleLength: 5,
				lineWidth: 4,
				size: 80
			});

			$('.chart2').easyPieChart({
				barColor: '#1c84c6',
				scaleColor: false,
				scaleLength: 5,
				lineWidth: 4,
				size: 80
			});

//			var data2 = [
//				[gd(2012, 1, 1), 7], [gd(2012, 1, 2), 6], [gd(2012, 1, 3), 4], [gd(2012, 1, 4), 8],
//				[gd(2012, 1, 5), 9], [gd(2012, 1, 6), 7], [gd(2012, 1, 7), 5], [gd(2012, 1, 8), 4],
//				[gd(2012, 1, 9), 7], [gd(2012, 1, 10), 8], [gd(2012, 1, 11), 9], [gd(2012, 1, 12), 6],
//				[gd(2012, 1, 13), 4], [gd(2012, 1, 14), 5], [gd(2012, 1, 15), 11], [gd(2012, 1, 16), 8],
//				[gd(2012, 1, 17), 8], [gd(2012, 1, 18), 11], [gd(2012, 1, 19), 11], [gd(2012, 1, 20), 6],
//				[gd(2012, 1, 21), 6], [gd(2012, 1, 22), 8], [gd(2012, 1, 23), 11], [gd(2012, 1, 24), 13],
//				[gd(2012, 1, 25), 7], [gd(2012, 1, 26), 9], [gd(2012, 1, 27), 9], [gd(2012, 1, 28), 8],
//				[gd(2012, 1, 29), 5], [gd(2012, 1, 30), 8], [gd(2012, 1, 31), 25]
//			];

			var data3 = [
				[gd(2012, 1, 1), 800], [gd(2012, 1, 2), 500], [gd(2012, 1, 3), 600], [gd(2012, 1, 4), 700],
				[gd(2012, 1, 5), 500], [gd(2012, 1, 6), 456], [gd(2012, 1, 7), 800], [gd(2012, 1, 8), 589],
				[gd(2012, 1, 9), 467], [gd(2012, 1, 10), 876], [gd(2012, 1, 11), 689], [gd(2012, 1, 12), 700],
				[gd(2012, 1, 13), 500], [gd(2012, 1, 14), 600], [gd(2012, 1, 15), 700], [gd(2012, 1, 16), 786],
				[gd(2012, 1, 17), 345], [gd(2012, 1, 18), 888], [gd(2012, 1, 19), 888], [gd(2012, 1, 20), 888],
				[gd(2012, 1, 21), 987], [gd(2012, 1, 22), 444], [gd(2012, 1, 23), 999], [gd(2012, 1, 24), 567],
				[gd(2012, 1, 25), 786], [gd(2012, 1, 26), 666], [gd(2012, 1, 27), 888], [gd(2012, 1, 28), 900],
				[gd(2012, 1, 29), 178], [gd(2012, 1, 30), 555], [gd(2012, 1, 31), 993]
			];


			var dataset = [
				{
					label: "Number of orders",
					data: data3,
					color: "#1ab394",
					bars: {
						show: true,
						align: "center",
						barWidth: 24 * 60 * 60 * 600,
						lineWidth:0
					}

				}, {
					label: "Payments",
					data: data2,
					yaxis: 2,
					color: "#1C84C6",
					lines: {
						lineWidth:1,
						show: true,
						fill: true,
						fillColor: {
							colors: [{
								opacity: 0.2
							}, {
								opacity: 0.4
							}]
						}
					},
					splines: {
						show: false,
						tension: 0.6,
						lineWidth: 1,
						fill: 0.1
					},
				}
			];


			var options = {
				xaxis: {
					mode: "time",
					tickSize: [3, "day"],
					tickLength: 0,
					axisLabel: "Date",
					axisLabelUseCanvas: true,
					axisLabelFontSizePixels: 12,
					axisLabelFontFamily: 'Arial',
					axisLabelPadding: 10,
					color: "#d5d5d5"
				},
				yaxes: [{
					position: "left",
					max: 1070,
					color: "#d5d5d5",
					axisLabelUseCanvas: true,
					axisLabelFontSizePixels: 12,
					axisLabelFontFamily: 'Arial',
					axisLabelPadding: 3
				}, {
					position: "right",
					clolor: "#d5d5d5",
					axisLabelUseCanvas: true,
					axisLabelFontSizePixels: 12,
					axisLabelFontFamily: ' Arial',
					axisLabelPadding: 67
				}
				],
				legend: {
					noColumns: 1,
					labelBoxBorderColor: "#000000",
					position: "nw"
				},
				grid: {
					hoverable: false,
					borderWidth: 0
				}
			};

			function gd(year, month, day) {
				return new Date(year, month - 1, day).getTime();
			}

			var previousPoint = null, previousLabel = null;

			$.plot($("#flot-dashboard-chart"), dataset, options);

			var data1 = [
				[0,4],[1,8],[2,5],[3,10],[4,4],[5,16],[6,5],[7,11],[8,6],[9,11],[10,30],[11,10],[12,13],[13,4],[14,3],[15,3],[16,6]
			];
			var data2 = [
				[0,1],[1,0],[2,2],[3,0],[4,1],[5,3],[6,1],[7,5],[8,2],[9,3],[10,2],[11,1],[12,0],[13,2],[14,8],[15,0],[16,0]
			];
			$("#flot-dashboard-chart").length && $.plot($("#flot-dashboard-chart"), [
						data1, data2
					],
					{
						series: {
							lines: {
								show: false,
								fill: true
							},
							splines: {
								show: true,
								tension: 0.4,
								lineWidth: 1,
								fill: 0.4
							},
							points: {
								radius: 0,
								show: true
							},
							shadowSize: 2
						},
						grid: {
							hoverable: true,
							clickable: true,
							tickColor: "#d5d5d5",
							borderWidth: 1,
							color: '#d5d5d5'
						},
						colors: ["#1ab394", "#1C84C6"],
						xaxis:{
						},
						yaxis: {
							ticks: 4
						},
						tooltip: false
					}
			);

			var mapData = {
				"US": 298,
				"SA": 200,
				"DE": 220,
				"FR": 540,
				"CN": 120,
				"AU": 760,
				"BR": 550,
				"IN": 200,
				"GB": 120,
			};

//			$('#world-map').vectorMap({
//				map: 'world_mill_en',
//				backgroundColor: "transparent",
//				regionStyle: {
//					initial: {
//						fill: '#e4e4e4',
//						"fill-opacity": 0.9,
//						stroke: 'none',
//						"stroke-width": 0,
//						"stroke-opacity": 0
//					}
//				},
//
//				series: {
//					regions: [{
//						values: mapData,
//						scale: ["#1ab394", "#22d6b1"],
//						normalizeFunction: 'polynomial'
//					}]
//				},
//			})
//			$('.summernote').summernote({focus: true});
		});


	</script>
	<%--<script>--%>
		<%--var edit = function() {--%>
			<%--$('.click2edit').summernote({focus: true});--%>
		<%--};--%>
		<%--var save = function() {--%>
			<%--var aHTML = $('.click2edit').code(); //save HTML If you need(aHTML: array).--%>
			<%--$('.click2edit').destroy();--%>
		<%--}--%>
		<%----%>
	<%--</script>--%>

	<sitemesh:head/>
</head>

<%--<%@ include file="/WEB-INF/layouts/menu.jsp"%>--%>
<%--<div id="page-wrapper" class="gray-bg">--%>
<%--<%@ include file="/WEB-INF/layouts/header.jsp"%>--%>
<%--<sitemesh:body/>--%>
<%--<%@ include file="/WEB-INF/layouts/footer.jsp"%>--%>

<body class="menubar-hoverable header-fixed menubar-pin ">
<%@ include file="/WEB-INF/layouts/menu.jsp"%>
<div id="page-wrapper" class="gray-bg">
<%@ include file="/WEB-INF/layouts/header.jsp"%>
<sitemesh:body/>
<%@ include file="/WEB-INF/layouts/footer.jsp"%>
	</div>
<body>
<script>
	var config = {
		'.chosen-select'           : {},
		'.chosen-select-deselect'  : {allow_single_deselect:true},
		'.chosen-select-no-single' : {disable_search_threshold:10},
		'.chosen-select-no-results': {no_results_text:'Oops, nothing found!'},
		'.chosen-select-width'     : {width:"100%"}
	}
	for (var selector in config) {
		$(selector).chosen(config[selector]);
	}

</script>
</body>
</html>