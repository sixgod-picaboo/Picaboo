<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>我的账户</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Place favicon.ico in the root directory -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
<!--All Css Here-->

<!-- Ionicons Font CSS-->
<link rel="stylesheet" href="css/ionicons.min.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- Animate CSS-->
<link rel="stylesheet" href="css/animate.css">
<!-- Owl Carousel CSS-->
<link rel="stylesheet" href="css/owl.carousel.min.css">
<!-- Nice Select CSS-->
<link rel="stylesheet" href="css/nice-select.css">
<!-- Slick CSS-->
<link rel="stylesheet" href="css/slick.css">
<!-- Meanmenu CSS-->
<link rel="stylesheet" href="css/meanmenu.min.css">
<!-- Venobox CSS-->
<link rel="stylesheet" href="css/venobox.css">
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Style CSS -->
<link rel="stylesheet" href="css/style.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Modernizr Js -->
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
<script src="js/ie8-responsive-file-warning.js"></script>
<!--[endif]-->
<script src="js/ie-emulation-modes-warning.js"></script>
<!-- layui的部分 -->
<link rel="stylesheet" href="layui/css/layui.css" media="all">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="layui/layui.js" charset="utf-8"></script>
<script type="text/jscript">
		$(document).ready(function(){
			$("#enter_orders").click(function(){
				getListData(1,10);
				});
			getListData(1,10);
		});

		function getListData(curr,limit){
	        $.getJSON({
	            type:'POST',
	            url: "MyAccountServlet", // ajax请求路径
	            data: {
	                page:curr, //当前页数
	                pageSize:limit
	            },
	            dataType:'json',
	            success: function(result){
	            	console.log(result.data);
	            	var str = "";
	            	for(var i = 0;i<result.data.length;i++){
	            		str += "<tr><td>"+result.data[i].orders_id+"</td><td>"+result.data[i].orders_date+"</td><td><a href='MyAccountServlet?op=entergoodsinfo&ordersid="+result.data[i].orders_id+"'><input type='button' value='查看订单' class='btn btn-danger btnupdate' style='width:120px;height:25px'/></a></td></tr>";
	            	}
	            	
	                $("#orders_info").html(str);
	                paged(result);
	            }
        	});
		}
		
	    function paged(data){
	    	layui.use(['laypage', 'layer'], function(){
				var laypage = layui.laypage,
				layer = layui.layer;
			
		    	//完整功能
		    	laypage.render({
		        	elem: 'page',
		        	count:data.total,
		        	curr:data.page,
		        	limit:data.pagesize,
		        	layout: ['count', 'prev', 'page','next', 'skip'],
		        	jump: function(obj,first){
		        		//首次不执行
		        		if(!first){//do something
		        			getListData(obj.curr,obj.limit);
		          		}
		        	}
		    	});
	    	});
	    }	
		

	</script>
</head>
<body>

	<!--[if lt IE 8]>
	<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->

	<div class="wrapper">
		<!--Header Area Start-->
		<header>
			<!--Header Top Area Start-->
			<div class="header-top-area">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<!--Header Top Left Start-->
							<div class="header-top-left">
								<a href="#">Picaboo网上购物平台</a>
							</div>
							<!--Header Top Left End-->
						</div>
						<div class="col-md-6">
							<!--Header Top Right Start-->
							<div class="header-top-right text-center text-md-right">
								<ul class="header-top-menu">			
									<c:choose>
									<c:when test="${user.user_name != null}">
									<li><a href="ShopServlet?op=search">我的店铺</a></li>
									<li class="drodown-show"><a href="#">${user.user_name} <i
											class="ion-ios-arrow-down"></i></a> <!--Header Top Dropdown Start-->
										<ul class="ht-dropdown">
											<li><a href="my-account.jsp">个人账户</a></li>
											<li><a href="UserServlet?op=loginout" >登出</a></li>
										</ul> <!--Header Top Dropdown End-->
									</li>
									</c:when>
									<c:when test="${user.user_name == null}">
									<a href="login.jsp">您未登录,请登录</a>
									</c:when>
									</c:choose>
								</ul>
							</div>
							<!--Header Top Right End-->
						</div>
					</div>
				</div>
			</div>
			<!--Header Top Area End-->
			<!--Header Middle Area Start-->
			<div class="header-middle-area header-sticky">
				<div class="container">
					<div class="row">
						<div class="col-md-3">
							<!--Logo Start-->
							<div class="logo">
								<a href="index.jsp"> <img src="img/logo/logo1.jpg" alt="">
								</a>
							</div>
							<!--Logo End-->
						</div>
						<div class="col-md-9">
							<!--Header Menu Start-->
							<div class="header-menu-area">
								<nav>
									<ul class="main-menu">
										<li><a href="index.jsp">首页</a> <!--Dropdown Menu Start-->

											<!--Dropdown Menu End--></li>
										<li><a href="about.jsp">关于我们</a></li>
										<li><a href="gs?op=queryByName">购物</a></li>
										<li><a href="index.jsp">更多</a> <!--Dropdown Menu Start-->
											<ul class="dropdown">
												<li><a href="about.jsp">关于我们</a></li>
												<li><a href="gs?op=queryByName">购物</a></li>
												<li><a href="contact.jsp">联系我们</a></li>
											</ul> <!--Dropdown Menu End--></li>
										<!--Mega Menu End-->
									</ul>
								</nav>
							</div>
							<!--Header Menu End-->
							<div class="header-phone">
								<p>
									Call us: <br>
									<span>(0591) 400 56789</span>
								</p>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<!--Mobile Menu Area Start-->
							<div class="mobile-menu d-lg-none"></div>
							<!--Mobile Menu Area End-->
						</div>
					</div>
				</div>
			</div>
			<!--Header Middle Area End-->
			<!--Header Bottom Area Start-->
			<div class="header-bottom-area pb-15">
				<div class="container">
					<div class="row">
						<div class="col-md-12 col-lg-3 order-lg-1 order-3">
							<!--Category Menu Start-->
							<div class="category-menu category-menu-hidden">
								<div class="category-heading">
									<h2 class="categories-toggle">
										<span>主题市场</span><i class="ion-ios-arrow-down"></i>
									</h2>
								</div>
								<div id="cate-toggle" class="category-menu-list">
									<ul id="typelist">
										  <c:forEach items="${typelist}" var="typelist">
											<li><a onclick="typeclick('${typelist.gtype_name}','${typelist.gtype_id}')" href="#">${typelist.gtype_name}</a></li>
										  </c:forEach>
										 
										</ul>
								</div>
							</div>
							<!--Category Menu End-->
						</div>
						<div class="col-md-9 col-lg-6 order-lg-2 order-1">
							<!--Header Top Search Start-->
							<div class="header-top-search">
								<div class="search-categories">
									<form action="gs" method="get">
											<div class="search-form-input">
												<input hidden="hidden" name="op" value="queryByName">
												<input id="queryByName" name="name" type="text" placeholder="搜索...">
												<button id="queryByNameBtn" class="top-search-btn" type="submit"><i class="ion-ios-search-strong" ></i></button>
											</div>
										</form>
								</div>
							</div>
							<!--Header Top Search End-->
						</div>
						<div class="col-md-3 col-lg-3 order-lg-3 order-2">
							<!--Mini Cart Start-->
							<div class="mini-cart">
								<a href="cart.jsp"> <span class="cart-info">  <span class="text">购物车</span>
								</span>
								</a>
							
							</div>
							<!--Mini Cart End-->
						</div>
					</div>
				</div>
			</div>
			<!--Header Bottom Area End-->
		</header>
		<!--Header Area End-->
		<!--Breadcrumb Area Start-->
		<div class="breadcrumb-area">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="breadcrumb-content text-center">
							<h1 class="breadmome-name">我的账户</h1>
							<ul>
								<li><a href="index.jsp">首页</a></li>
								<li class="active">我的账户</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--Breadcrumb Area End-->
		<!--My Account Area Strat-->
		<div class="my-account white-bg mt-80">
			<div class="container">
				<div class="account-dashboard">
					<div class="dashboard-upper-info">
						<div class="row align-items-center no-gutters">
							<div class="col-lg-3 col-md-12">
								<div class="d-single-info">
									<p class="user-name">
										Hello <span>yourmail@info</span>
									</p>
									<p>
										(not yourmail@info? <a href="#">Log Out</a>)
									</p>
								</div>
							</div>
							<div class="col-lg-4 col-md-12">
								<div class="d-single-info">
									<p>Need Assistance? Customer service at.</p>
									<p>admin@devitems.com.</p>
								</div>
							</div>
							<div class="col-lg-3 col-md-12">
								<div class="d-single-info">
									<p>E-mail them at</p>
									<p>support@yoursite.com</p>
								</div>
							</div>
							<div class="col-lg-2 col-md-12">
								<div class="d-single-info text-lg-center">
									<a class="view-cart" href="cart.jsp"><i
										class="fa fa-cart-plus"></i>查看购物车</a>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 col-lg-2">
							<!-- Nav tabs -->
							<ul class="nav flex-column dashboard-list" role="tablist">
								<li id="enter_orders"><a class="nav-link active" data-toggle="tab" 
									href="#orderboard">我的订单</a></li>
								<li><a class="nav-link" data-toggle="tab" href="#address"
									id="address1">收货地址</a></li>
								<li><a class="nav-link" data-toggle="tab"
									href="#account-details">账户设置</a></li>
							</ul>
						</div>
						<div class="col-md-12 col-lg-10">
							<!-- Tab panes -->
							<div class="tab-content dashboard-content">
								<div id="orderboard" class="tab-pane fade show active">
									<h3>订单记录</h3>
									<div id="orders">
										<table class="table table-striped">
											<thead align="center">
												<tr>
													<th>订单编号</th>
													<th>下单日期</th>
													<th>操作</th>
												</tr>
											</thead>
											<tbody id="orders_info" align="center">
												
											</tbody>
										</table>
										<!-- 分页层 -->
										<div id="page" align="center"></div>
									</div>
								</div>

								<div id="address" class="tab-pane">
									<p>这里添加你的收货地址</p>
									<h4 class="billing-address">收货地址</h4>
									<button id='modal-18086' class='btn btn-danger btnupdate'
										href='#modal-container-18086' data-toggle='modal'>添加</button>
									<table class="table table-striped table-bordered table-hover">
										<tr>
											<th>用户账号</th>
											<th>收货地址</th>
											<th>联系电话</th>
											<th>操作</th>
										</tr>



										<tbody id="user1">

										</tbody>

									</table>
								</div>
								<div id="account-details" class="tab-pane fade">
									<h3>信息修改</h3>
									<div class="login">
										<div class="login-form-container">
											<div class="login-form">
												<form action="UserServlet?op=update" method="post" id="ctijiao">

													<label>用户名</label> <input name="username" type="text"
														value="${sessionScope.user.user_name}"> 
													<label>修改密码</label><span><label id="pwdinfo" style="color: red" ></label></span> 
													<input name="userpwd" type="password" id="userpwd" required="required">
													<label>确认密码</label> <span><label id="pwd1info" style="color: red"></label></span> 
													<input name="userpwd1" type="password" id="userpwd1" required="required">
													<div id="messg"></div>
													<label>手机号</label> <input name="usertel"
														value="${sessionScope.user.user_tel}" type="text"
														onkeyup="value=value.replace(/[^\d]/g,'')" required="required">
													<div class="button-box">
														<button type="button" class="default-btn" id="checked1">修改</button>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--My Account Area End-->
		<!--Feature Area Start-->
		<div class="feature-area mt-50">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<!--Single Feature Start-->
						<div class="single-feature">
							<div class="feature-icon">
								<i class="icon ion-ios-telephone"></i>
							</div>
							<div class="feature-content">
								<h3>(999) 1234 56789</h3>
								<p>咨询电话</p>
							</div>
						</div>
						<!--Single Feature End-->
					</div>
					<div class="col-md-4">
						<!--Single Feature Start-->
						<div class="single-feature">
							<div class="feature-icon">
								<i class="icon ion-email"></i>
							</div>
							<div class="feature-content">
								<h3>1234@sixgod.com</h3>
								<p>咨询邮箱</p>
							</div>
						</div>
						<!--Single Feature End-->
					</div>
					<div class="col-md-4">
						<!--Single Feature Start-->
						<div class="single-feature">
							<div class="feature-icon">
								<i class="icon ion-ios-timer-outline"></i>
							</div>
							<div class="feature-content">
								<h3>6:00 a.m--9:00 p.m</h3>
								<p>咨询时间</p>
							</div>
						</div>
						<!--Single Feature End-->
					</div>
				</div>
			</div>
		</div>
		<!--Feature Area End-->
		<!--Footer Area Start-->
		<footer>
			<div class="footer-container">
				<!--Footer Top Area Start-->
				<div class="footer-top-area pt-50 pb-35">
					<div class="container">
						<div class="row">
							<div class="col-lg-4 col-md-6 col-12">
								<!--Single Footer Wiedget Start-->
								<div class="single-footer-wiedget mb-30">
									<div class="footer-logo">
										<a href="index.jsp"><img src="img/logo/logo1.jpg" alt=""></a>
									</div>
									<div class="desc-footer">我们是个专业的网上购物平台，用户可以在这里用最低的价格买到最优质的商品</div>
									<div class="address-footer">
										<p class="address">
											<span>公司地址:厦门市思明区</span>
										</p>
										<p class="phone">
											<span>Tel:123456</span>
										</p>
										<p class="mail">
											<span>support@sixgod.com</span>
										</p>
									</div>
								</div>
								<!--Single Footer Wiedget End-->
							</div>
							<div class="col-lg-2 col-md-6 col-12">
								<!--Single Footer Wiedget Start-->
								<div class="single-footer-wiedget mb-30">
									<div class="footer-title">
										<h3>产品</h3>
									</div>
									<ul class="link-widget">
										<li><a href="#">价格区间</a></li>
										<li><a href="#">新产品</a></li>
										<li><a href="#">优惠活动</a></li>
										<li><a href="#">联系我们</a></li>
										<li><a href="#">回到首页</a></li>
										<li><a href="#">登录</a></li>
									</ul>
								</div>
								<!--Single Footer Wiedget End-->
							</div>
							<div class="col-lg-2 col-md-6 col-12">
								<!--Single Footer Wiedget Start-->
								<div class="single-footer-wiedget mb-30">
									<div class="footer-title">
										<h3>我们公司</h3>
									</div>
									<ul class="link-widget">
										<li><a href="#">快递业务</a></li>
										<li><a href="#">法律规定</a></li>
										<li><a href="#">关于我们</a></li>
										<li><a href="#">安全支付</a></li>
										<li><a href="#">联系我们</a></li>
										<li><a href="#">商店</a></li>
									</ul>
								</div>
								<!--Single Footer Wiedget End-->
							</div>
							<div class="col-lg-4 col-md-6 col-12">
								<!--Single Footer Wiedget Start-->
								<div class="single-footer-wiedget mb-30">
									<div class="footer-title">
										<h3>微博</h3>
										<a href="#">我们的微博账号</a>
									</div>
									<ul id="Instafeed"></ul>
								</div>
								<!--Single Footer Wiedget End-->
							</div>
						</div>
					</div>
				</div>
				<!--Footer Top Area End-->

				<!--Footer Bottom Area Start-->
				<div class="footer-bottom-area">
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<!--Footer Copyright Start-->
								<div class="footer-copyright">
									<p>Copyright &copy; 2018.Company name All rights reserved.</p>
								</div>
								<!--Footer Copyright End-->
							</div>
							<div class="col-md-6">
								<!--Footer Payment Start-->
								<div class="footer-payments-image text-center text-md-right">
									<img src="img/payment/payment.png" alt="">
								</div>
								<!--Footer Payment End-->
							</div>
						</div>
					</div>
				</div>
				<!--Footer Bottom Area End-->
			</div>
		</footer>
		<!--Footer Area End-->
		<!-- Modal Area Strat -->
		<div class="modal fade" id="open-modal" tabindex="-1" role="dialog"
			aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="row">
							<!--Modal Img-->
							<div class="col-md-5">
								<!--Modal Tab Content Start-->
								<div class="tab-content product-details-large" id="myTabContent">
									<div class="tab-pane fade show active" id="single-slide1"
										role="tabpanel" aria-labelledby="single-slide-tab-1">
										<!--Single Product Image Start-->
										<div class="single-product-img img-full">
											<img src="img/single-product/large/large1.jpg" alt="">
										</div>
										<!--Single Product Image End-->
									</div>
									<div class="tab-pane fade" id="single-slide2" role="tabpanel"
										aria-labelledby="single-slide-tab-2">
										<!--Single Product Image Start-->
										<div class="single-product-img img-full">
											<img src="img/single-product/large/large2.jpg" alt="">
										</div>
										<!--Single Product Image End-->
									</div>
									<div class="tab-pane fade" id="single-slide3" role="tabpanel"
										aria-labelledby="single-slide-tab-3">
										<!--Single Product Image Start-->
										<div class="single-product-img img-full">
											<img src="img/single-product/large/large3.jpg" alt="">
										</div>
										<!--Single Product Image End-->
									</div>
									<div class="tab-pane fade" id="single-slide4" role="tabpanel"
										aria-labelledby="single-slide-tab-4">
										<!--Single Product Image Start-->
										<div class="single-product-img img-full">
											<img src="img/single-product/large/large4.jpg" alt="">
										</div>
										<!--Single Product Image End-->
									</div>
								</div>
								<!--Modal Content End-->
								<!--Modal Tab Menu Start-->
								<div class="single-product-menu">
									<div class="nav single-slide-menu" role="tablist">
										<div class="single-tab-menu img-full">
											<a class="active" data-toggle="tab" id="single-slide-tab-1"
												href="#single-slide1"><img
												src="img/single-product/small/small1.jpg" alt=""></a>
										</div>
										<div class="single-tab-menu img-full">
											<a data-toggle="tab" id="single-slide-tab-2"
												href="#single-slide2"><img
												src="img/single-product/small/small2.jpg" alt=""></a>
										</div>
										<div class="single-tab-menu img-full">
											<a data-toggle="tab" id="single-slide-tab-3"
												href="#single-slide3"><img
												src="img/single-product/small/small3.jpg" alt=""></a>
										</div>
										<div class="single-tab-menu img-full">
											<a data-toggle="tab" id="single-slide-tab-4"
												href="#single-slide4"><img
												src="img/single-product/small/small4.jpg" alt=""></a>
										</div>
									</div>
								</div>
								<!--Modal Tab Menu End-->
							</div>
							<!--Modal Img-->
							<!--Modal Content-->
							<div class="col-md-7">
								<div class="single-product-content">
									<h1 class="single-product-name">Printed Chiffon Dress</h1>
									<div class="single-product-reviews">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="single-product-price">
										<div class="product-discount">
											<span class="regular-price">$20.50</span> <span class="price">$16.40</span>
											<span class="discount">-20%</span>
										</div>
									</div>
									<div class="product-info">
										<p>Long printed dress with thin adjustable straps.
											V-neckline and wiring under the bust with ruffles at the
											bottom of the dress.</p>
									</div>
									<div class="single-product-action">
										<form action="#">
											<div class="product-variants">
												<div class="product-variants-item">
													<span class="control-label">Size</span> <select
														class="nice-select" name="size">
														<option value="1">S</option>
														<option value="2">M</option>
														<option value="3">X</option>
														<option value="4">XL</option>
													</select>
												</div>
												<div class="product-variants-item">
													<span class="control-label">Color</span> <select
														class="nice-select" name="color">
														<option value="1">Red</option>
														<option value="2">Green</option>
														<option value="3">Blue</option>
														<option value="4">White</option>
													</select>
												</div>
											</div>
											<div class="product-add-to-cart">
												<span class="control-label">Quantity</span>
												<div class="cart-plus-minus">
													<input class="cart-plus-minus-box" type="text"
														name="qtybutton" value="0">
												</div>
												<div class="add">
													<button class="add-to-cart">
														<i class="zmdi zmdi-shopping-cart-plus"></i> add-to-cart
													</button>
													<span class="product-availability"><i
														class="zmdi zmdi-check"></i> In stock</span>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
							<!--Modal Content-->
						</div>
					</div>
					<div class="modal-footer">
						<!--Single Product Share-->
						<div class="single-product-share">
							<ul>
								<li class="categories-title">Share :</li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
							</ul>
						</div>
						<!--Single Product Share-->
					</div>
				</div>
			</div>
		</div>
		<!-- Modal Area End -->
		<script src="js/bootstrap.js"></script>

		<div class="modal fade" id="modal-container-180868" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel">修改用户</h4>
					</div>

					<div class="modal-body">

						<form class="form-horizontal" role="form"
							action="MyAccountServlet" method="post" id="submittijiao">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-6 control-label"></label>
								<div class="col-sm-10">
									<input type="hidden" class="form-control" id="userid"
										name="userid" readonly="readonly" />
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-6 control-label">收货地址</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="useraddress"
										name="useraddress" required="required" />
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-6 control-label"></label>
								<div class="col-sm-10">
									<input type="hidden" class="form-control" id="oldaddress"
										name="oldaddress" required="required" />
								</div>
							</div>

							<div class="form-group">
								<label for="inputEmail3" class="col-sm-6 control-label">联系电话</label>
								<span id="check"></span>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="telphone"
										name="telphone" required="required"
										onkeyup="value=value.replace(/[^\d]/g,'')" />
								</div>

							</div>

							<input type="hidden" value="changeAddress" id="op" name="op" />
							<div align="center">
								<button type="submit" class="btn btn-primary" id="tijiao">保存</button>

							</div>
						</form>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

					</div>
				</div>

			</div>

		</div>
		<!-- 添加遮罩 -->
		<div class="modal fade" id="modal-container-18086" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel">修改用户</h4>
					</div>

					<div class="modal-body">

						<form class="form-horizontal" role="form"
							action="MyAccountServlet" method="post">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-6 control-label"></label>
								<div class="col-sm-10">
									<input type="hidden" class="form-control" id="userid"
										name="userid" readonly="readonly" />
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-6 control-label">收货地址</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="useraddress"
										name="useraddress" required="required" />
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-6 control-label">联系电话</label>
								<span id="check"></span>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="telphone"
										name="telphone" required="required"
										onkeyup="value=value.replace(/[^\d]/g,'')" />
								</div>

							</div>

							<input type="hidden" value="insertAddress" id="op" name="op" />
							<div align="center">
								<button type="submit" class="btn btn-primary" id="tijiao1">保存</button>

							</div>
						</form>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

					</div>
				</div>

			</div>

		</div>
		<%
			if (request.getAttribute("msg") != null) {
				Object str = request.getAttribute("msg");
		%>
		<script type="text/javascript">
		        alert("<%=str%>");
		</script>
		<%
			}
		%>
		<!-- 遮罩层 -->
		<!-- js jquery -->
		<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
		<script type="text/javascript">
        $(function() {
            $.getJSON("gs?op=gy",null,function(data){
            	var typelist=""
            	console.log(data[0].gtype_name)
            	for(var i=0;i<data.length;i++){
                 
            	   typelist=typelist+"<li><a  href='gs?op=gd&typename="+data[i].gtype_name+"&typeid="+data[i].gtype_id+"'>"+data[i].gtype_name+"</a></li>"
            	}
            	typelist=typelist+"<li class='rx-child'><a href='shop.html'>学习</a></li><li class='rx-parent'><a class='rx-default'><span class='cat-thumb  fa fa-plus'></span>更多</a><a class='rx-show'><span class='cat-thumb  fa fa-minus'></span>缩小</a></li>"
            	$("#typelist").html(typelist);
            	//typeclick(typename,typeid)	             	           	      
            })
                  	     
            //$.ajaxSettings.async = true;
         var request=<%=session.getAttribute("typelist")%>
        	
        	$("#userpwd").blur(function(){
        		var num = $(this).val().length;
				console.log(num);
				if(num<6||num>16){
					$("#pwdinfo").html("请输入6~16位密码");
				}else{
					$("#pwdinfo").html("");
				}
        	})
          
        	$("#userpwd1").blur(function(){
        		var firstpwd = $("#userpwd").val();
        		var checkpwd = $("#userpwd1").val();
        		
        		if(firstpwd == checkpwd && firstpwd!=""){
        			$("#messg").html("<span style='color:green;'>√确认密码正确</span>");
        			$("#checked1").click(function(){
        				$("#ctijiao").submit();
            			alert("修改成功");
        			});
        			
        		}else{
        			$("#messg").html("<span style='color:red;'>×确认密码错误，请重输！</span>");
        			$("#checked1").click(function(){
            			alert("确认密码错误！请修改！");
        			});
        		}
        	});
            
        	
        	
        	
        	$("#address1").click(function(){
        		queryaddress();
        		
        	});
        	
        
      
        });
        
        function queryaddress(){
        	$.getJSON("MyAccountServlet","op=queaddress",function(data){
    			var str = "";
    			for(var i = 0; i< data.length ; i++){
    				str = str+"<tr><td>"+data[i].user_id+"</td><td>"+data[i].user_addr+"</td><td>"+data[i].user_tel+"</td><td><button id='modal-180868' class='btn btn-primary btnupdate' href='#modal-container-180868' data-toggle='modal'>修改</button><button class='btn btn-danger btndel' value="+data[i].user_addr+">删除</button></td></tr>";
    			}
    			$("#user1").html(str);
    			myupdatebtn();
    			mydelbtn();
    		});
        }
        
        function myupdatebtn(){
			$(".btnupdate").on('click',function(){
				var userid = $(this).parents("tr").find("td").eq(0).text();
				//console.log(userid);
				var address = $(this).parents("tr").find("td").eq(1).text();
				
				var telphone = $(this).parents("tr").find("td").eq(2).text();
				$("#userid").val(userid);
				$("#useraddress").val(address);
				$("#oldaddress").val(address);
				$("#telphone").val(telphone);
			});
		}
        function mydelbtn(){
        	$(".btndel").click(function() {

				var flag = confirm("确定删除吗?");
				if (flag) {
					location.href = "MyAccountServlet?op=delAddress&address="
							+ $(this).val();

				}
			});
        }
        
        </script>
	</div>
	<!--All Js Here-->

	<!--Jquery 1.12.4-->
	<script src="js/vendor/jquery-1.12.4.min.js"></script>
	<!--Imagesloaded-->
	<script src="js/imagesloaded.pkgd.min.js"></script>
	<!--Isotope-->
	<script src="js/isotope.pkgd.min.js"></script>
	<!--Waypoints-->
	<script src="js/waypoints.min.js"></script>
	<!--Counterup-->
	<script src="js/jquery.counterup.min.js"></script>
	<!--Countdown-->
	<script src="js/jquery.countdown.min.js"></script>
	<!--Carousel-->
	<script src="js/owl.carousel.min.js"></script>
	<!--Slick-->
	<script src="js/slick.min.js"></script>
	<!--Meanmenu-->
	<script src="js/jquery.meanmenu.min.js"></script>
	<!--Instafeed-->
	<!--<script src="js/instafeed.min.js"></script>-->
	<!--Nice Select-->
	<script src="js/jquery.nice-select.min.js"></script>
	<!--ScrollUp-->
	<script src="js/jquery.scrollUp.min.js"></script>
	<!--Wow-->
	<script src="js/wow.min.js"></script>
	<!--Venobox-->
	<script src="js/venobox.min.js"></script>
	<!--Popper-->
	<script src="js/popper.min.js"></script>
	<!--Bootstrap-->
	<script src="js/bootstrap.min.js"></script>
	<!--Plugins-->
	<script src="js/plugins.js"></script>
	<!--Main Js-->
	<script src="js/main.js"></script>
</body>
</html>
