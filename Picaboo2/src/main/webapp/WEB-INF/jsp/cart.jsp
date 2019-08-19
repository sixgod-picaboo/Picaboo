<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>购物车</title>
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
<!-- [endif]-->
<script src="js/ie-emulation-modes-warning.js"></script>
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
											<li class="drodown-show"><a href="#">${user.user_name}
													<i class="ion-ios-arrow-down"></i>
											</a> <!--Header Top Dropdown Start-->
												<ul class="ht-dropdown">
													<li><a href="my-account.jsp">个人账户</a></li>
													<li><a href="UserServlet?op=loginout">登出</a></li>
												</ul> <!--Header Top Dropdown End--></li>
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
										<li class="active"><a href="index.jsp">首页</a> <!--Dropdown Menu Start-->

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
									Call us: <br> <span>(0591) 400 56789</span>
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
											<li><a
												onclick="typeclick('${typelist.gtype_name}','${typelist.gtype_id}')"
												href="#">${typelist.gtype_name}</a></li>
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
											<input id="queryByName" name="name" type="text"
												placeholder="搜索...">
											<button id="queryByNameBtn" class="top-search-btn"
												type="submit">
												<i class="ion-ios-search-strong"></i>
											</button>
										</div>
									</form>
								</div>
							</div>
							<!--Header Top Search End-->
						</div>
						<div class="col-md-3 col-lg-3 order-lg-3 order-2">
							<!--Mini Cart Start-->
							<div class="mini-cart">
								<a href="cart.jsp"> <span class="cart-info"> <span
										class="text">购物车</span>
								</span>
								</a>

								<!--Cart Dropdown End-->
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
							<h1 class="breadmome-name">购物车</h1>
							<ul>
								<li><a href="index.jsp">首页</a></li>
								<li class="active">购物车</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--Breadcrumb Area End-->
		<!--Shopping Cart Area Strat-->
		<div class="Shopping-cart-area mt-80">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<form action="#">
							<div class="table-content table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th class="picaboo-product-remove">移除</th>
											<th class="picaboo-product-thumbnail">图片</th>
											<th class="cart-product-name">商品</th>
											<th class="picaboo-product-price">价格</th>
											<th class="picaboo-product-size">尺码</th>
											<th class="picaboo-product-quantity">数量</th>
											<th class="picaboo-product-subtotal">总价</th>
										</tr>
									</thead>

									<tbody id="carts">
									</tbody>
								</table>
							</div>
							<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
						

							<script type="text/javascript">
								$(function(){
									var messg = '<%=request.getAttribute("messg")%>';
									if(messg!='null'){
										alert(messg)
									}else{
										console.log("123");
									}
									
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
								queryCarts();

									$("#update_cart").click(function() {

										queryCarts();
									});
									$(".tocheck")
											.click(
													function() {
														location.href = "CheckOutServlet?op=carts";
													});

								});

								function queryCarts() {
									$
											.getJSON(
													"CarServlet",
													"op=doQueryCarts",
													function(data) {
														var str = "";
														var xiaoji = 0;
														var zongjia = "";

														if (data.length == 0) {

															$(".tocheck")
																	.hide();
														} else {
															$(".tocheck")
																	.show();
														}
														for (var i = 0; i < data.length; i++) {
															str = str
																	+ "<tr><td class='picaboo-product-remove'><a href='#' name='"+data[i].goods_id+"' id='del"+i+"' class='dela'><i class='fa fa-times'></i></a></td><td class='picaboo-product-thumbnail'><a href='gs?op=sp&goods_id="
																	+ data[i].goods_id
																	+ "&goods_size="
																	+ data[i].goods_size
																	+ "'><img src='/img/"+data[i].gphoto_path+"' alt='"+data[i].goods_name+"'  heigth='100px' width='100px'></a></td><td class='picaboo-product-name'><a href='gs?op=sp&goods_id="
																	+ data[i].goods_id
																	+ "&goods_size="
																	+ data[i].goods_size
																	+ "'>"
																	+ data[i].goods_name
																	+ "</a></td><td class='picaboo-product-price'><span class='amount amount_price'>￥"
																	+ data[i].goods_price
																	+ "<td class='picaboo-product-size'><a href='#' id='size"+i+"'>"
																	+ data[i].goods_size
																	+ "</a></td>"
																	+ "</span></td><td class='picaboo-product-quantity'><input value="+data[i].goods_num+" type='number' class='goodsnum' id="+i+" ></td><td class='product-subtotal'>￥<span class='amount amount_1 "+i+"' >"
																	+ (data[i].goods_num)
																	* (data[i].goods_price)
																	+ "</span></td></tr>";
															xiaoji += parseFloat(data[i].goods_price)
																	* parseFloat(data[i].goods_num);

														}
														$("#carts").html(str);
														$("#xiaoji").html(
																"￥" + xiaoji);
														$("#zuizhong").html(
																"￥" + xiaoji);
														$(".goodsnum")
																.click(
																		function() {
																			var id = this.id;
																			var goods_id = $(
																					"#del"
																							+ id)
																					.attr(
																							'name');
																			var goods_size = $(
																					"#"
																							+ id)
																					.parents(
																							"tr")
																					.find(
																							"td")
																					.eq(
																							4)
																					.text();
																			$(
																					"#"
																							+ id)
																					.val(
																							$(
																									"#"
																											+ id)
																									.val() > 0 ? $(
																									"#"
																											+ id)
																									.val()
																									: 1);

																			var num = $(
																					"#"
																							+ id)
																					.val();
																			$
																					.get(
																							"CarServlet",
																							"op=updateCartNum&goodsid="
																									+ goods_id
																									+ "&goodssize="
																									+ goods_size
																									+ "&goodsnum="
																									+ num,
																							function(
																									rs) {

																								$(
																										"#"
																												+ id)
																										.val(
																												num);

																							});
																			var price = parseFloat(data[id].goods_price);
																			var prices = parseFloat(num)
																					* parseFloat(price);
																			$(
																					"."
																							+ id)
																					.html(
																							prices);
																			var lastprice = 0;
																			for (var i = 0; i < data.length; i++) {
																				var price2 = $(
																						"."
																								+ i)
																						.text();
																				lastprice += parseFloat(price2);
																			}
																			$(
																					"#xiaoji")
																					.html(
																							"￥"
																									+ lastprice);
																			$(
																					"#zuizhong")
																					.html(
																							"￥"
																									+ lastprice);

																			//location.href="CarServlet?op=updateCartNum&goodsid="+goods_id+"&goodssize="+goods_size+"&goodsnum="+num;

																		});

														$(".dela")
																.click(
																		function() {
																			var id = this.id;
																			var goods_id = $(
																					"#"
																							+ id)
																					.attr(
																							'name');
																			var goods_size = $(
																					"#"
																							+ id)
																					.parents(
																							"tr")
																					.find(
																							"td")
																					.eq(
																							4)
																					.text();

																			$
																					.get(
																							"CarServlet",
																							"op=delSingleCarts&goodsid="
																									+ goods_id
																									+ "&goodssize="
																									+ goods_size,
																							function(
																									rs) {

																								queryCarts();

																							});
																		});

														$(".clean")
																.click(
																		function() {
																			$
																					.get(
																							"CarServlet",
																							"op=cleanCarts",
																							function(
																									rs) {

																								queryCarts();

																							});
																		});

													});

								}
							</script>
							
							<div class="row">
								<div class="col-12">
									<div class="coupon-all">
										<!-- <div class="coupon">
											<input id="coupon_code" class="input-text" name="coupon_code"
												value="" placeholder="Coupon code" type="text"> <input
												class="button" name="apply_coupon" value="Apply coupon"
												type="submit">
										</div> -->
										<div class="coupon2">
											<input class="button" name="update_cart" value="更新购物车"
												id="update_cart" type="button">
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-5 ml-auto">
									<div class="cart-page-total">
										<h2>购物车总价</h2>
										<ul>
											<li>小计 <span id="xiaoji">¥0</span></li>
											<li>最终价 <span id="zuizhong">¥0</span></li>
										</ul>
										<a href="#" class="clean">清空购物车</a> <a href="#"
											class="tocheck">结账</a>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!--Shopping Cart Area End-->
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
