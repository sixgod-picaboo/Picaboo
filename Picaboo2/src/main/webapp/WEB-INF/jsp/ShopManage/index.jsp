<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	pageContext.setAttribute("basePath", basePath);
%>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>店铺后台管理-主页</title>

<link
	href="${pageScope.basePath}/SM_element/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">

<!-- Page level plugin CSS-->
<link
	href="${pageScope.basePath}/SM_element/vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="${pageScope.basePath}/SM_element/css/sb-admin.css"
	rel="stylesheet">

<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<!-- Echarts -->
<script src="${basePath}/js/echarts.js"></script>

</head>



<body id="page-top">
	<script type="text/javascript">
		var messagenum = 0
		var messagenum1 = 0
		var messagenum2 = 0
		window.onload = function() {
			$("#messagenum").html('');
			$("#Purchase_message").html('');
			$("#Backward_message").html('');
			$.post("BoosServlet?op=messagenum", null, function(data) {
				messagenum = data
				$("#messagenum").html("+" + messagenum);
				$.post("BoosServlet?op=messagenum1", null, function(data) {
					messagenum = data
					$("#Purchase_message").html("购买消息    +" + messagenum);
					$.post("BoosServlet?op=messagenum2", null, function(data) {
						messagenum = data
						$("#Backward_message").html("退货消息    +" + messagenum);
					});
				});
			});
			
			
		}
	</script>
	<!--导航条start  -->
	<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

		<a class="navbar-brand mr-1"
			href="${pageScope.basePath}ShopServlet?op=search">店铺后台管理</a>

		<button class="btn btn-link btn-sm text-white order-1 order-sm-0"
			id="sidebarToggle" href="#">
			<i class="fas fa-bars"></i>
		</button>

		<!-- 搜索栏start -->
		<form
			class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
			<div class="input-group">
				</div>
			</div>
		</form>
		<!-- 搜索栏end -->

		<!-- 消息小控件start -->
		<ul class="navbar-nav ml-auto ml-md-0">
			<li class="nav-item dropdown no-arrow mx-1"><a
				class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <span class="badge badge-danger"
					id="messagenum">信息条数</span>
			</a></li>
			<li class="nav-item dropdown no-arrow mx-1"><a
				class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-envelope fa-fw"></i>
			</a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="messagesDropdown">
					<a class="dropdown-item"
						href="${pageScope.basePath}BoosServlet?op=ship_queryByPage"
						id="Purchase_message">购买消息</a> <a class="dropdown-item" href="#"
						id="Backward_message">退货消息</a>
				</div></li>
		</ul>
		<!-- 消息小控件end -->

	</nav>
	<!--导航条end  -->

	<div id="wrapper">

		<!-- 左侧导航条start -->
		<ul class="sidebar navbar-nav">
			<li class="nav-item active"><a class="nav-link"
				href="${pageScope.basePath}ShopServlet?op=search"> <i
					class="fas fa-fw fa-tachometer-alt"></i> <span>主页</span>
			</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="pagesDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-fw fa-folder"></i> <span>功能页面：</span>
			</a>
				<div class="dropdown-menu" aria-labelledby="pagesDropdown">
					<h6 class="dropdown-header">返回官网：</h6>
					<a class="dropdown-item" href="${pageScope.basePath}index.jsp">Return
						Picaboo</a>
					<div class="dropdown-divider"></div>
					<h6 class="dropdown-header">其他页面：:</h6>
					<a class="dropdown-item"
						href="${pageScope.basePath}BoosServlet?op=ship_queryByPage">购买订单管理</a>
					<a class="dropdown-item"
						href="${pageScope.basePath}BoosServlet?op=queryByPage">浏览商品</a>
				</div></li>
			<li class="nav-item"><a class="nav-link"
				href="${pageScope.basePath}BoosServlet?op=alltype"> <i
					class="fas fa-fw fa-chart-area"></i> <span>添加商品：</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${pageScope.basePath}BoosServlet?op=return_queryByPage"> <i
					class="fas fa-fw fa-table"></i> <span>处理退货信息</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${pageScope.basePath}BoosServlet?op=confirm_receipt"> <i
					class="fas fa-fw fa fa-qrcode"></i> <span>签到收货信息</span>
			</a></li>
		</ul>
		<!-- 左侧导航条end -->


		<div id="content-wrapper">

			<div class="container-fluid">
				<!-- DataTables Example -->
				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-table"></i> Echarts Table
					</div>

					<div class="card-body">
						<div id="main" style="height: 400px"></div>

					</div>
					<div class="card-footer small text-muted">Updated yesterday
						at 11:59 PM</div>
				</div>

			</div>
			<!-- /.container-fluid -->

			<!-- Sticky Footer -->
			<footer class="sticky-footer">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright © Your Website 2019</span>
					</div>
				</div>
			</footer>

		</div>
	</div>

	<!-- 置顶滚动条-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>


	<!-- Echarts图表start -->
	<script type="text/javascript">
		$.getJSON("BoosServlet", {
			op : "Chart_display"
		}, function(data) {
			bind(data);
		});

		function bind(result) {
			// 基于准备好的dom，初始化echarts实例
			var myChart = echarts.init(document.getElementById('main'));

			var res = [];
			var len = result.length;
			for (var i = 0, size = len; i < size; i++) {
				res.push({
					value : result[i].goods_sum,
					name : result[i].gtype_name
				});
			}

			var res1 = [];
			var len1 = result.length;
			for (var i = 0, size = len1; i < size; i++) {
				res1.push({
					name : result[i].gtype_name
				});
			}

			console.log(res);

			// 指定图表的配置项和数据
			option = {
				title : {
					text : '类型库存图',
					subtext : '抽象图',
					x : 'center'
				},
				tooltip : {
					trigger : 'item',
					formatter : "{a} <br/>{b} : {c} ({d}%)"
				},
				legend : {
					x : 'center',
					y : 'bottom',
					data : res1
				},
				toolbox : {
					show : true,
					feature : {
						mark : {
							show : true
						},
						dataView : {
							show : true,
							readOnly : false
						},
						magicType : {
							show : true,
							type : [ 'pie', 'funnel' ]
						},
						restore : {
							show : true
						},
						saveAsImage : {
							show : true
						}
					}
				},
				calculable : true,
				series : [  {
					name : '面积模式',
					type : 'pie',
					radius : [ 30, 110 ],
					center : [ '50%', 200 ],
					roseType : 'area',
					x : '50%', // for funnel
					max : 40, // for funnel
					sort : 'ascending', // for funnel
					data : res 
				} ]
			};

			/* option = {
				title : {
					text : '某站点用户访问来源',
					subtext : '纯属虚构',
					x : 'center'
				},
				tooltip : {
					trigger : 'item',
					formatter : "{a} <br/>{b} : {c} ({d}%)"
				},
				legend : {
					orient : 'vertical',
					x : 'left',
					data : res1
				},
				toolbox : {
					show : true,
					feature : {
						mark : {
							show : true
						},
						dataView : {
							show : true,
							readOnly : false
						},
						magicType : {
							show : true,
							type : [ 'pie', 'funnel' ],
							option : {
								funnel : {
									x : '25%',
									width : '50%',
									funnelAlign : 'left',
									max : 1548
								}
							}
						},
						restore : {
							show : true
						},
						saveAsImage : {
							show : true
						}
					}
				},
				calculable : true,
				series : [ {
					name : '访问来源',
					type : 'pie',
					radius : '55%',
					center : [ '50%', '60%' ],
					data : res
				} ]
			}; */

			// 使用刚指定的配置项和数据显示图表。
			myChart.setOption(option);
		}
	</script>
	<!-- Echarts图表end -->

	<!-- Bootstrap core JavaScript-->
	<script
		src="${pageScope.basePath}/SM_element/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageScope.basePath}/SM_element/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="${pageScope.basePath}/SM_element/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Page level plugin JavaScript-->
	<script
		src="${pageScope.basePath}/SM_element/vendor/chart.js/Chart.min.js"></script>
	<script
		src="${pageScope.basePath}/SM_element/vendor/datatables/jquery.dataTables.js"></script>
	<script
		src="${pageScope.basePath}/SM_element/vendor/datatables/dataTables.bootstrap4.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="${pageScope.basePath}/SM_element/js/sb-admin.min.js"></script>

	<!-- Demo scripts for this page-->
	<script
		src="${pageScope.basePath}/SM_element/js/demo/datatables-demo.js"></script>
	<script
		src="${pageScope.basePath}/SM_element/js/demo/chart-area-demo.js"></script>

</body>

</html>
