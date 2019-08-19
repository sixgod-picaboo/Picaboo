<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	pageContext.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>店铺后台管理-添加商品</title>

<!-- Custom fonts for this template-->
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
						href="${pageScope.basePath}BoosServlet?op=ship_queryByPage" id="Purchase_message">购买消息</a>
					<a class="dropdown-item" href="#" id="Backward_message">退货消息</a>
				</div></li>
		</ul>
		<!-- 消息小控件end -->

	</nav>
	<!--导航条end  -->
	<div id="wrapper">

		<!-- 左侧导航条start -->
		<ul class="sidebar navbar-nav">
			<li class="nav-item"><a class="nav-link" href="${pageScope.basePath}ShopServlet?op=search"> <i
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
						href="${pageScope.basePath}BoosServlet?op=ship_queryByPage">购买订单管理</a> <a
						class="dropdown-item"
						href="${pageScope.basePath}BoosServlet?op=queryByPage">浏览商品</a>
				</div></li>
			<li class="nav-item active"><a class="nav-link"
				href="${pageScope.basePath}ShopManage/add_goods.jsp"> <i
					class="fas fa-fw fa-chart-area"></i> <span>添加商品：</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="${pageScope.basePath}BoosServlet?op=return_queryByPage">
					<i class="fas fa-fw fa-table"></i> <span>处理退货信息</span>
			</a></li>
			<li class="nav-item">
				<a class="nav-link"
				href="${pageScope.basePath}BoosServlet?op=confirm_receipt"> 
				<i class="fas fa-fw fa fa-qrcode"></i> 
				<span>签到收货信息</span>
				</a>
			</li>
		</ul>
		<!-- 左侧导航条end -->

		<div id="content-wrapper">
			<div class="container">
				<!-- 提交表单start -->
				<h2>填写添加商品信息</h2>
				<form action="${pageScope.basePath}BoosServlet?op=addgoods" method="post" enctype="multipart/form-data">
					<div class="form-group" style="display:none">
						<%
							Date d = new Date();
							SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
							String now = df.format(d);
						%>
						<label for="goods_id">商品ID</label> <input type="text"
							class="form-control" id="goods_id" name="goods_id"
							placeholder="Enter goodsid" value="T<%=now%>">
					</div>
					<div class="form-group">
						<label for="goods_name">商品名称</label> <input type="text"
							class="form-control" id="goods_name" name="goods_name"
							placeholder="Enter goodsname">
					</div>
					<div class="form-group">
						<label for="shop_id">店铺ID：</label> <input type="text"
							class="form-control" id="shop_id" name="shop_id"
							placeholder="Enter shopid" readonly="readonly"
							value="${sessionScope.shop.shop_id}">
					</div>
					<div class="form-group">
						<label for="goods_state">商品状态：</label> <input type="text"
							class="form-control" id="goods_state" name="goods_state"
							placeholder="Enter goodsstate" readonly="readonly" value="2">
					</div>
					<div class="form-group">
						<label for="goods_price">单价：</label> <input type="text"
							class="form-control" id="goods_price" name="goods_price"
							placeholder="Enter goodsprice">
					</div>
					<div class="form-group">
						<label for="goods_size">商品尺寸：</label> <input type="text"
							class="form-control" id="goods_size" name="goods_size"
							placeholder="Enter goodssize">
					</div>
					<div class="form-group">
						<label for="goods_stock">商品库存：</label> <input type="text"
							class="form-control" id="goods_stock" name="goods_stock"
							placeholder="Enter goodsstock">
					</div>
					<div class="form-group">
						<label for="gtype_name">商品类型：</label> <select id="gtype_name"
							name="gtype_name"
							class="form-control form-control-chosen-required"
							data-placeholder="Please select...">
							<option></option>
							<c:forEach items="${sessionScope.alltypelist}" var="arti">
								<option value="${arti.gtype_name}">${arti.gtype_name}</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="goods_info">备注信息：</label> <input type="text"
							class="form-control" id="goods_info" name="goods_info"
							placeholder="Enter goods_info">
					</div>
					<div class="from-group">
						<label for="goods_info">图片一：</label> <input type="file"
							id="customFile1" name="customFile1"
							accept="image/x-png,image/gif,image/jpeg,image/bmp">
					</div>
			 		<div class="from-group">
						<label for="goods_info">图片二：</label> <input type="file"
							id="customFile2" name="customFile2"
							accept="image/x-png,image/gif,image/jpeg,image/bmp"> 
					</div>
					<div class="from-group">
						<label for="goods_info">图片三：</label> <input type="file"
							id="customFile3" name="customFile3"
							accept="image/x-png,image/gif,image/jpeg,image/bmp">
					</div>
					<br/>
					<button type="submit" class="btn btn-primary">添加</button>
				</form>
				<!-- 提交表单end -->
			</div>
			<!-- Sticky Footer -->
			<footer class="sticky-footer">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright © Your Website 2019</span>
					</div>
				</div>
			</footer>
		</div>
		<!-- /.content-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- 顶部滚动按钮-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- 弹出框提示 -->
	<%
		String msg = (String) session.getAttribute("msg");
		if (msg != null && !"".equals(msg)) {
	%>
	<script type="text/javascript">
		alert("<%=msg%>");
	</script>
	<%
		session.setAttribute("msg", "");
		}
	%>
	<!-- Bootstrap core JavaScript-->
	<script
		src="${pageScope.basePath}/SM_element/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageScope.basePath}/SM_element/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageScope.basePath}/SM_element/vendor/bootstrap/js/bootstrap.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="${pageScope.basePath}/SM_element/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Page level plugin JavaScript-->
	<script
		src="${pageScope.basePath}/SM_element/vendor/chart.js/Chart.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="${pageScope.basePath}/SM_element/js/sb-admin.min.js"></script>

	<!-- Demo scripts for this page-->
	<script
		src="${pageScope.basePath}/SM_element/js/demo/chart-area-demo.js"></script>
	<script
		src="${pageScope.basePath}/SM_element/js/demo/chart-bar-demo.js"></script>
	<script
		src="${pageScope.basePath}/SM_element/js/demo/chart-pie-demo.js"></script>

</body>

</html>
