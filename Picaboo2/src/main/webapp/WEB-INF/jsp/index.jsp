<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.sixgod.pojo.Goods_type"%>
<%
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
pageContext.setAttribute("basePath", basePath);
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!doctype html>
<html class="no-js" lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<title>Picaboo购物平台</title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Place favicon.ico in the root directory -->
		<link rel="shortcut icon" type="image/x-icon" href="${pageScope.basePath}/img/favicon.ico">
		<!--All Css Here-->

		<!-- Ionicons Font CSS-->
		<link rel="stylesheet" href="${pageScope.basePath}/css/ionicons.min.css">
		<!-- Font Awesome CSS-->
		<link rel="stylesheet" href="${pageScope.basePath}/css/font-awesome.min.css">

		<!-- Animate CSS-->
		<link rel="stylesheet" href="${pageScope.basePath}/css/animate.css">
		<!-- Owl Carousel CSS-->
		<link rel="stylesheet" href="${pageScope.basePath}/css/owl.carousel.min.css">
		<!-- Nice Select CSS-->
		<link rel="stylesheet" href="${pageScope.basePath}/css/nice-select.css">
		<!-- Slick CSS-->
		<link rel="stylesheet" href="${pageScope.basePath}/css/slick.css">
		<!-- Meanmenu CSS-->
		<link rel="stylesheet" href="${pageScope.basePath}/css/meanmenu.min.css">
		<!-- Venobox CSS-->
		<link rel="stylesheet" href="${pageScope.basePath}/css/venobox.css">
		<!-- Bootstrap CSS-->
		<link rel="stylesheet" href="${pageScope.basePath}/css/bootstrap.min.css">
		<!-- Style CSS -->
		<link rel="stylesheet" href="${pageScope.basePath}/css/style.css">
		<!-- Responsive CSS -->
		<link rel="stylesheet" href="${pageScope.basePath}/css/responsive.css">
		<!-- Modernizr Js -->
		<script src="${pageScope.basePath}js/vendor/modernizr-2.8.3.min.js"></script>
	</head>
	<body>

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
									<a href="index.jsp">
										<img src="img/logo/logo1.jpg" alt="">
									</a>
								</div>
								<!--Logo End-->
							</div>
							<div class="col-md-9">
								<!--Header Menu Start-->
								<div class="header-menu-area">
									<nav>
										<ul class="main-menu">
											<li class="active"><a href="index.jsp">首页</a>
												<!--Dropdown Menu Start-->
											
												<!--Dropdown Menu End-->
											</li>
											<li><a href="about.jsp">关于我们</a></li>
											<li><a href="gs?op=queryByName">购物</a></li>
											<li><a href="index.jsp">更多</a>
												<!--Dropdown Menu Start-->
												<ul class="dropdown">
													<li><a href="about.jsp">关于我们</a></li>
													<li><a href="gs?op=queryByName">购物</a>
													<li><a href="register.jsp">注册</a></li>
													<li><a href="contact.jsp">联系我们</a></li>
												</ul>
												<!--Dropdown Menu End-->
											</li>
												<!--Mega Menu End-->
										</ul>
									</nav>
								</div>
								<!--Header Menu End-->
								<div class="header-phone">
									<p>Call us: <br><span>(0591) 400 56789</span></p>
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
								<div class="category-menu">
									<div class="category-heading">
										<h2 class="categories-toggle"><span>主题市场</span><i class="ion-ios-arrow-down"></i></h2>
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
									<a href="cart.jsp">
										<span class="cart-info">
										
											<span class="text">购物车</span>
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
			<!--Slider Area Start-->
			<div class="slider-area">
				<div class="container">
					<div class="row">
						<div class="col-md-3 d-md-none col-lg-3 d-lg-block"></div>
						<div class="col-md-8 col-lg-6">
							<div class="hero-slider owl-carousel">
								<!--Single Slider Start-->
								<div class="single-slider" style="background-image: url(img/slider/home1-slider-1.jpg)">
									<div class="hero-slider-content">
										<h2 class="slow-animation1">夏季大促销</h2>
										<h2 class="slow-animation2">商家大出血</h2>
										<h4>样样商品</h4>
										<h1><font color="red">十</font>折起</h1>
										<div class="slider-btn mt-50">
											<a href="#">Shop Now</a>
										</div>
									</div>
								</div>
								<!--Single Slider End-->
								<!--Single Slider Start-->
								<div class="single-slider" style="background-image: url(img/slider/home1-slider-2.jpg)">
									<div class="hero-slider-content">
										<h2 class="slow-animation1">Beat solo2</h2>
										<h2 class="slow-animation2">wireless</h2>
										<h4>get up to</h4>
										<h1>60% off</h1>
										<div class="slider-btn mt-50">
											<a href="#">Shop Now</a>
										</div>
									</div>
								</div>
								<!--Single Slider End-->
							</div>
						</div>
						<div class="col-md-4 col-lg-3">
							<!--Sidebar Product Categories Start-->
							<div class="sidebar-product-categori">
								<div class="sidebar-cate-title">
									<h2>猜你喜欢</h2>
								</div>
								<div class="categori-block-content owl-carousel">
									<div class="item-listcategories" id="guess">
										<!--Single List Categories Start-->
									</div>
								
								</div>
							</div>
							<!--Sidebar Product Categories Start-->
						</div>
					</div>
					<div class="banner-slide mt-30">
						<div class="banner-inner">
							<a href="#"><img class="d-lg-block d-md-block d-none" src="img/banner/slider-banner.jpg" alt=""> <img class="d-block d-md-none d-lg-none"
								 src="img/banner/slider-banner1.png" alt=""></a>
						</div>
					</div>
				</div>
			</div>
			<!--Slider Area End-->
		
			<!--Product Area Start-->
			<div class="product-area mt-80">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<!--Section Title Start-->
							<div class="section-title">
								<h2>畅销商品</h2>
							</div>
							<!--Section Title End-->
						</div>
					</div>
					<div class="product-block-content">
						<div class="row">
							<div class="bestsellerSlide pdr-0 owl-carousel">
								<div class="col-md-12">
									<!--Single Product Start-->
									<div class="single-product">
										<div class="product-img">
											<a id="href0" href="single-product.html">
												<img class="first-img" id="img00" src="img/product/product1.jpg" style="width=300px;height=300px" alt="">
											</a>
											<span class="sticker">Hot</span>
										</div>
										<div class="product-content">
											<h4><a href="single-product.html" id="info0"></a></h4>
											<div class="product-price">
												<span class="price" id="price0"></span>
											</div>
											<div class="product-reviews">
												<i class="ion-android-star"></i>
												<i class="ion-android-star"></i>
												<i class="ion-android-star"></i>
												<i class="ion-android-star"></i>
												<i class="ion-android-star"></i>
											</div>
										</div>
									</div>
									<!--Single Product End-->
								</div>
								<div class="col-md-12">
									<!--Single Product Start-->
									<div class="single-product">
										<div class="product-img">
											<a id="href1" href="single-product.html">
												<img class="first-img" id="img10" src="img/product/product3.jpg" style="width=300px;height=300px" alt="">
											</a>
											<span class="sticker">Hot</span>
										</div>
										<div class="product-content">
											<h4><a href="single-product.html" id="info1"></a></h4>
											<div class="product-price">
												<span class="price" id="price1"></span>
											</div>
											<div class="product-reviews">
												<i class="ion-android-star"></i>
												<i class="ion-android-star"></i>
												<i class="ion-android-star"></i>
												<i class="ion-android-star"></i>
												<i class="ion-android-star"></i>
											</div>
										</div>
									</div>
									<!--Single Product End-->
								</div>
								<div class="col-md-12">
									<!--Single Product Start-->
									<div class="single-product">
										<div class="product-img">
											<a id="href2" href="single-product.html">
												<img class="first-img" id="img20" src="img/product/product4.jpg" style="width=300px;height=300px" alt="">
											</a>
											<span class="sticker">Hot</span>
										</div>
										<div class="product-content">
											<h4><a href="single-product.html" id="info2"></a></h4>
											<div class="product-price">
												<span class="price" id="price2"></span>
											</div>
											<div class="product-reviews">
												<i class="ion-android-star"></i>
												<i class="ion-android-star"></i>
												<i class="ion-android-star"></i>
												<i class="ion-android-star"></i>
												<i class="ion-android-star"></i>
											</div>
										</div>
									</div>
									<!--Single Product End-->
								</div>
								<div class="col-md-12">
									<!--Single Product Start-->
									<div class="single-product">
										<div class="product-img">
											<a id="href3" href="single-product.html">
												<img class="first-img" id="img30" style="width=300px;height=300px" src="img/product/product6.jpg" alt="">
											</a>
											<span class="sticker">Hot</span>
										</div>
										<div class="product-content">
											<h4><a href="single-product.html" id="info3"></a></h4>
											<div class="product-price">
												<span class="price" id="price3"></span>
											</div>
											<div class="product-reviews">
												<i class="ion-android-star"></i>
												<i class="ion-android-star"></i>
												<i class="ion-android-star"></i>
												<i class="ion-android-star"></i>
												<i class="ion-android-star"></i>
											</div>
										</div>
									</div>
									<!--Single Product End-->
								</div>
						</div>
					</div>
				</div>
			</div>
			<!--Product Area End-->
	
		
			
			<!-- Brand Area Start -->
			<div class="brand-area mt-80">
				<div class="container">
					<div class="brand-block-content">
						<div class="row">
							<div class="col-12">
								<div class="brand-active owl-carousel">
									<!--Single Brand Start-->
									<div class="single-brand">
										<a href="#"><img src="img/brand/brand1.jpg" alt=""></a>
									</div>
									<!--Single Brand End-->
									<!--Single Brand Start-->
									<div class="single-brand">
										<a href="#"><img src="img/brand/brand2.jpg" alt=""></a>
									</div>
									<!--Single Brand End-->
									<!--Single Brand Start-->
									<div class="single-brand">
										<a href="#"><img src="img/brand/brand3.jpg" alt=""></a>
									</div>
									<!--Single Brand End-->
									<!--Single Brand Start-->
									<div class="single-brand">
										<a href="#"><img src="img/brand/brand4.jpg" alt=""></a>
									</div>
									<!--Single Brand End-->
									<!--Single Brand Start-->
									<div class="single-brand">
										<a href="#"><img src="img/brand/brand5.jpg" alt=""></a>
									</div>
									<!--Single Brand End-->
									<!--Single Brand Start-->
									<div class="single-brand">
										<a href="#"><img src="img/brand/brand2.jpg" alt=""></a>
									</div>
									<!--Single Brand End-->
									<!--Single Brand Start-->
									<div class="single-brand">
										<a href="#"><img src="img/brand/brand1.jpg" alt=""></a>
									</div>
									<!--Single Brand End-->
									<!--Single Brand Start-->
									<div class="single-brand">
										<a href="#"><img src="img/brand/brand4.jpg" alt=""></a>
									</div>
									<!--Single Brand End-->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Brand Area End -->
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
		                               <p class="address"><span>公司地址:厦门市思明区</span></p>
		                               <p class="phone"><span>Tel:123456</span></p>
		                               <p class="mail"><span>support@sixgod.com</span></p>
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
			<div class="modal fade" id="open-modal" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="row">
								<!--Modal Img-->
								<div class="col-md-5">
									<!--Modal Tab Content Start-->
									<div class="tab-content product-details-large" id="myTabContent">
										<div class="tab-pane fade show active" id="single-slide1" role="tabpanel" aria-labelledby="single-slide-tab-1">
											<!--Single Product Image Start-->
											<div class="single-product-img img-full">
												<img src="img/single-product/large/large1.jpg" alt="">
											</div>
											<!--Single Product Image End-->
										</div>
										<div class="tab-pane fade" id="single-slide2" role="tabpanel" aria-labelledby="single-slide-tab-2">
											<!--Single Product Image Start-->
											<div class="single-product-img img-full">
												<img src="img/single-product/large/large2.jpg" alt="">
											</div>
											<!--Single Product Image End-->
										</div>
										<div class="tab-pane fade" id="single-slide3" role="tabpanel" aria-labelledby="single-slide-tab-3">
											<!--Single Product Image Start-->
											<div class="single-product-img img-full">
												<img src="img/single-product/large/large3.jpg" alt="">
											</div>
											<!--Single Product Image End-->
										</div>
										<div class="tab-pane fade" id="single-slide4" role="tabpanel" aria-labelledby="single-slide-tab-4">
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
												<a class="active" data-toggle="tab" id="single-slide-tab-1" href="#single-slide1"><img src="img/single-product/small/small1.jpg"
													 alt=""></a>
											</div>
											<div class="single-tab-menu img-full">
												<a data-toggle="tab" id="single-slide-tab-2" href="#single-slide2"><img src="img/single-product/small/small2.jpg"
													 alt=""></a>
											</div>
											<div class="single-tab-menu img-full">
												<a data-toggle="tab" id="single-slide-tab-3" href="#single-slide3"><img src="img/single-product/small/small3.jpg"
													 alt=""></a>
											</div>
											<div class="single-tab-menu img-full">
												<a data-toggle="tab" id="single-slide-tab-4" href="#single-slide4"><img src="img/single-product/small/small4.jpg"
													 alt=""></a>
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
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
										<div class="single-product-price">
											<div class="product-discount">
												<span class="regular-price">$20.50</span>
												<span class="price">$16.40</span>
												<span class="discount">-20%</span>
											</div>
										</div>
										<div class="product-info">
											<p>Long printed dress with thin adjustable straps. V-neckline and wiring under the bust with ruffles at the
												bottom of the dress.</p>
										</div>
										<div class="single-product-action">
											<form action="#">
												<div class="product-variants">
													<div class="product-variants-item">
														<span class="control-label">Size</span>
														<select class="nice-select" name="size">
															<option value="1">S</option>
															<option value="2">M</option>
															<option value="3">X</option>
															<option value="4">XL</option>
														</select>
													</div>
													<div class="product-variants-item">
														<span class="control-label">Color</span>
														<select class="nice-select" name="color">
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
														<input class="cart-plus-minus-box" type="text" name="qtybutton" value="0">
													</div>
													<div class="add">
														<button class="add-to-cart"><i class="zmdi zmdi-shopping-cart-plus"></i> add-to-cart</button>
														<span class="product-availability"><i class="zmdi zmdi-check"></i> In stock</span>
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
			<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	<script type="text/javascript">
			$(function(){
			/*
				$("#queryByNameBtn").click(function(){
					console.log("123");
					window.location.href = "gs?op=queryByName&name=" + $("#queryByName").val();
				});*/			
				$.ajaxSettings.async = false;
		               $.getJSON("IndexServlet",function(data){
						var str="";
						for(var i=0;i<data.length;i++){
							str=str+"<div class='list-categories'><div class='desc-listcategoreis'>"+
							"<div class='name-categoreis'>"+
							"<a href='gs?op=sp&goods_id="+data[i].goods_id+"&goods_size="+data[i].goods_size+"'>"+data[i].goods_name+"</a></div><div class='view-more'>"+
							"<a href='gs?op=sp&goods_id="+data[i].goods_id+"&goods_size="+data[i].goods_size+"'>Buy Now</a></div></div><div class='thumb-category'>"+
						"<a href='gs?op=sp&goods_id="+data[i].goods_id+"&goods_size="+data[i].goods_size+"'><img class='ig' src='/img/"+data[i].gphoto_path+"' alt='"+data[i].goods_name+"'></a>"+
					"</div></div>"
						}
						$("#guess").html(str);
						$(".ig").css("width","100px");
						
					}); 
		               $.getJSON("gs?op=gy",null,function(data){
			            	var typelist=""
			            	console.log(data[0].gtype_name)
			            	for(var i=0;i<data.length;i++){
	                         
			            	   typelist=typelist+"<li><a  href='gs?op=gd&typename="+data[i].gtype_name+"&typeid="+data[i].gtype_id+"'>"+data[i].gtype_name+"</a></li>"
			            	}
			            	typelist=typelist+"<li class='rx-child'><a href='shop.html'>学习</a></li><li class='rx-parent'><a class='rx-default'><span class='cat-thumb  fa fa-plus'></span>更多</a><a class='rx-show'><span class='cat-thumb  fa fa-minus'></span>缩小</a></li>"
			            	$("#typelist").html(typelist);
			            	//typeclick(typename,typeid)	             	           	      
			            });
		               var request=<%=session.getAttribute("typelist")%>
		            $.getJSON("${pageContext.request.contextPath}/gs","op=hot",function(data){
		            	console.log(data.length)
		            	if(data.length==0){
		            		$.getJSON("${pageContext.request.contextPath}/IndexServlet","op=four",function(data1){
		            			console.log(data1);
		            			for(var i=0;i<data1.length;i++){
									$("#price"+i).text("￥"+data1[i].goods_price);
									$("#href"+i).attr("href","gs?op=sp&goods_id="+data1[i].goods_id+"&goods_size="+data1[i].goods_size);
									$("#info"+i).text(data1[i].goods_name);
									$("#img"+i+"0").attr("src","/img/"+data1[i].gphoto_path);
									$("#img"+i+"0").attr("alt",data1[i].goods_name);
									$("#img"+i+"0").css("width", 300); // 设定实际显示宽度
							        $("#img"+i+"0").css("height", 300);
		            			}
		            		});
		            		}else{
								for(var i=0;i<data.length;i++){
									$("#price"+i).text("￥"+data[i].goods_price);
									$("#info"+i).text(data[i].goods_name);
									$("#img"+i+"0").attr("src","/img/"+data[i].list[0].gphoto_path);
									$("#img"+i+"0").attr("alt",data1[i].goods_name);
									$("#img"+i+"0").css("width", 300); // 设定实际显示宽度
							        $("#img"+i+"0").css("height", 300);
									}
								}
					});
		                     	     
		            $.ajaxSettings.async = true;
		    
		      
		 });
			
		
			
		</script>
		</div>
    <input type="button" onclick="turn_shop()">
<!-- 弹出框提示 -->
	<%
		String message = (String) session.getAttribute("message");
		if (message != null && !"".equals(message)) {
	%>
	<script type="text/javascript">
		alert("<%=message%>");
	</script>
	   <%
		session.setAttribute("message", "");
		}
	   %>
        
     <script type="text/javascript">
     <!-- 项目加载时先执行GoodstypeServlet -->
     <%--  window.onload=function(){
    	  var request=<%=session.getAttribute("typelist")%>
          if(request==null){
             location.href="gs?op=gy"
          }
      } --%>
      
     
      </script>
    
		<!--All Js Here-->

		<!--Jquery 1.12.4-->
		<script src="${pageScope.basePath}/js/vendor/jquery-1.12.4.min.js"></script>
		<!--Imagesloaded-->
		<script src="${pageScope.basePath}/js/imagesloaded.pkgd.min.js"></script>
		<!--Isotope-->
		<script src="${pageScope.basePath}/js/isotope.pkgd.min.js"></script>
		<!--Waypoints-->
		<script src="${pageScope.basePath}/js/waypoints.min.js"></script>
		<!--Counterup-->
		<script src="${pageScope.basePath}/js/jquery.counterup.min.js"></script>
		<!--Countdown-->
		<script src="${pageScope.basePath}/js/jquery.countdown.min.js"></script>
		<!--Carousel-->
		<script src="${pageScope.basePath}/js/owl.carousel.min.js"></script>
		<!--Slick-->
		<script src="${pageScope.basePath}/js/slick.min.js"></script>
		<!--Meanmenu-->
		<script src="${pageScope.basePath}/js/jquery.meanmenu.min.js"></script>
		<!--Instafeed-->
		<!--<script src="js/instafeed.min.js"></script>-->
		<!--Nice Select-->
		<script src="${pageScope.basePath}/js/jquery.nice-select.min.js"></script>
		<!--ScrollUp-->
		<script src="${pageScope.basePath}/js/jquery.scrollUp.min.js"></script>
		<!--Wow-->
		<script src="${pageScope.basePath}/js/wow.min.js"></script>
		<!--Venobox-->
		<script src="${pageScope.basePath}/js/venobox.min.js"></script>
		<!--Popper-->
		<script src="${pageScope.basePath}/js/popper.min.js"></script>
		<!--Bootstrap-->
		<script src="${pageScope.basePath}/js/bootstrap.min.js"></script>
		<!--Plugins-->
		<script src="${pageScope.basePath}/js/plugins.js"></script>
		<!--Main Js-->
		<script src="${pageScope.basePath}/js/main.js"></script>
		
		
	</body>
</html>
