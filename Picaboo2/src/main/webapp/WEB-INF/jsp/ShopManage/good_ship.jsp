<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	pageContext.setAttribute("basePath", basePath);
%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>店铺后台管理-购买订单管理</title>

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
				href="BoosServlet?op=alltype"> <i
					class="fas fa-fw fa-chart-area"></i> <span>添加商品：</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${pageScope.basePath}BoosServlet?op=return_queryByPage"> <i
					class="fas fa-fw fa-table"></i> <span>处理退货信息</span>
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

			<div class="container-fluid">
				<!-- Page Content -->
				<h1>购买订单管理</h1>
				<hr>
				<!-- 商品显示表格start -->
				<div class="table-responsive">
					<form class="form-inline">
						<div class="form-group">
							<input type="text" class="form-control" id="strlike"
								placeholder="Search" />
						</div>
						<button type="button" class="btn btn-default btnsearch">查询</button>
					</form>
					<table class="table">
						<thead>
							<tr>
								<th>订单号</th>
								<th>用户ID</th>
								<th>商品ID</th>
								<th>商品名称</th>
								<th>总价</th>
								<th>商品数量</th>
								<th>商品尺寸</th>
								<th>商品状态</th>
								<th>订单日期</th>
								<th>地址信息</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${shiplist.data ne null}">
								<c:forEach items="${shiplist.data}" var="ship">
									<tr>
										<td>${ship.orders_id}</td>
										<td>${ship.user_id}</td>
										<td>${ship.goods_id}</td>
										<td>${ship.goods_name}</td>
										<td>${ship.goods_price}</td>
										<td>${ship.goods_num}</td>
										<td>${ship.goods_size}</td>
										<c:choose>
											<c:when test="${ship.goods_state ==0}">
												<td>未发货</td>
											</c:when>
											<c:when test="${ship.goods_state ==1}">
												<td>已发货</td>
											</c:when>
											<c:when test="${ship.goods_state ==2}">
												<td>已收货</td>
											</c:when>
										</c:choose>
										<%-- <td>${ship.goods_state}</td> --%>
										<td>${ship.orders_date}</td>
										<td>${ship.user_addr}</td>
										<c:choose>
											<c:when test="${ship.goods_state ==0}">
												<td>
													<button class="btn btn-primary btnsend"
														value="${ship.orders_id}" id="modal-863543"
														href="#modal-container-863543" data-toggle="modal">
														发送</button>
												</td>
											</c:when>
											<c:otherwise>
												<td>
													<button class="btn btn-secondary" disabled="disabled"
														href="#modal-container-863543" data-toggle="modal">
														发送</button>
												</td>
											</c:otherwise>
										</c:choose>
									</tr>
								</c:forEach>
							</c:if>
						</tbody>
					</table>
					<!-- 拟态框 -->
					<div class="row clearfix">
						<div class="col-md-12 column">
							<div class="modal fade" id="modal-container-863543" role="dialog"
								aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">×</button>
											<h4 class="modal-title" id="myModalLabel">填写发送信息</h4>
										</div>

										<!-- 所要提交的表单start -->
										<form class="form-horizontal" role="form"
											action="BoosServlet?op=ship_send" method="post">
											<div class="modal-body">
												<div class="col-md-12 column">
													<div class="form-group" style="display: none">
														<label for="orders_id" class="col-sm-3 control-label">订单号</label>
														<div class="col-sm-10">
															<input type="text" class="form-control" id="orders_id"
																name="orders_id" readonly="readonly" />
														</div>
													</div>
													<div class="form-group" style="display: none">
														<label for="goods_id" class="col-sm-3 control-label">商品ID</label>
														<div class="col-sm-10">
															<input type="text" class="form-control" id="goods_id"
																name="goods_id"/>
														</div>
													</div>
													<div class="form-group" style="display: none">
														<label for="goods_size" class="col-sm-3 control-label">商品尺寸</label>
														<div class="col-sm-10">
															<input type="text" class="form-control" id="goods_size"
																name="goods_size" readonly="readonly" />
														</div>
													</div>
													<div class="form-group">
														<label for="track_num" class="col-sm-3 control-label">快递单号</label>
														<div class="col-sm-10">
															<input type="text" class="form-control" id="track_num"
																name="track_num" />
														</div>
													</div>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default"
														data-dismiss="modal">关闭</button>
													<button type="submit" class="btn btn-primary">确认发送</button>
												</div>
											</div>
										</form>
										<!-- 所要提交的表单 end-->

									</div>

								</div>

							</div>

						</div>
					</div>
					<!-- 拟态框 -->
				</div>
				<div id="pageDiv" align="center"></div>
				<!-- 商品显示表格end -->
				<!-- 最下方补充信息 -->
				<footer class="sticky-footer">
					<div class="container my-auto">
						<div class="copyright text-center my-auto">
							<span>Copyright © Your Website 2019</span>
						</div>
					</div>
				</footer>
			</div>
		</div>


		<!-- 商品的操作（修改，删除）start -->
		<script type="text/javascript" charset="UTF-8">
		$(function() {	
			$(".btnsend").click(function(){
				var orders_id = $(this).parents("tr").find("td").eq(0).text();
				var goods_id = $(this).parents("tr").find("td").eq(2).text();
				var goods_size = $(this).parents("tr").find("td").eq(6).text();
				
				$("#orders_id").val(orders_id);
				$("#goods_id").val(goods_id);
				$("#goods_size").val(goods_size);
			});
			
			$(".btnsearch").click(function(){
				location.href="BoosServlet?op=ship_queryByPage&strlike="+$("#strlike").val();
			});
		});
		</script>

		<!-- 商品的操作（修改，删除）start -->
		<!-- 分页 -->
		<link rel="stylesheet"
			href="${pageScope.basePath}/layui/css/layui.css" media="all">
		<script src="${pageScope.basePath}layui/layui.js" charset="utf-8"></script>
		<script type="text/javascript" charset="UTF-8">
		layui.use(['laypage', 'layer'], function(){
			  var laypage = layui.laypage
			  ,layer = layui.layer;
			//完整功能
			  laypage.render({
			    elem:'pageDiv'
			    ,count:${shiplist.total} ,
			    curr:${shiplist.page}
			   ,limit:${shiplist.pageSize}
			    ,layout:['count', 'prev', 'page','limit','next', 'skip']
			    ,jump: function(obj,first){
			      console.log(obj);
			      console.log(first);
			    //首次不执行
			      if(!first){
			        //do something
			    	  location.href="BoosServlet?op=ship_queryByPage&page="+obj.curr+"&pageSize="+obj.limit+"&strlike"+$("#strlike").val();
			      }
			    }
			  });
			 
			});

</script>

		<!-- 顶部滚动条-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fas fa-angle-up"></i>
		</a>

		<!-- 弹出框提示 -->
		<%
			String message = (String) session.getAttribute("msg");
			if (message != null && !"".equals(message)) {
		%>
		<script type="text/javascript">
		alert("<%=message%>");
	</script>
		<%
			session.setAttribute("msg", "");
			}
		%>


		<!--Jquery 1.12.4-->
		<script src="${pageScope.basePath}js/vendor/jquery-1.12.4.min.js"></script>
		<!-- Bootstrap core JavaScript-->
		<script
			src="${pageScope.basePath}/SM_element/vendor/jquery/jquery.min.js"></script>
		<script
			src="${pageScope.basePath}/SM_element/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

		<!-- Core plugin JavaScript-->
		<script
			src="${pageScope.basePath}/SM_element/vendor/jquery-easing/jquery.easing.min.js"></script>

		<!-- Custom scripts for all pages-->
		<script src="${pageScope.basePath}/SM_element/js/sb-admin.min.js"></script>

		<!--Main Js-->
		<script src="${pageScope.basePath}js/main.js"></script>
</body>

</html>
