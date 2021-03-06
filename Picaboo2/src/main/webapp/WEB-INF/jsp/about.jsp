<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>关于我们</title>
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
	<script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
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
											<li><a href="index.jsp">首页</a>
											</li>
											<li class="active"><a href="about.jsp">关于我们</a></li>
											<li><a href="gs?op=queryByName">购物</a></li>
											<li><a href="index.jsp">更多</a>
												<!--Dropdown Menu Start-->
												<ul class="dropdown">
													<li><a href="about.jsp">关于我们</a></li>
													<li><a href="gs?op=queryByName">购物</a></li>
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
		                   				<div class="category-menu category-menu-hidden">
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
		<!--Breadcrumb Area Start-->
		<div class="breadcrumb-area">
		    <div class="container">
		        <div class="row">
		            <div class="col-12">
		                <div class="breadcrumb-content text-center">
                            <h1 class="breadmome-name">关于我们</h1>
		                    <ul>
		                        <li><a href="index.html">首页</a></li>
		                        <li class="active">关于我们</li>
		                    </ul>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<!--Breadcrumb Area End-->
	    <!--About Us Area Start-->
		<div class="about-us-area mt-80">
		    <div class="container">
		        <div class="row">
		            <div class="col-lg-6 col-12">
		                <!--About Us Image Start-->
		                <div class="about-us-img-wrapper mb-30">
		                    <div class="about-us-image img-full">
                                <a href="#"><img src="img/about/about2.jpg" alt=""></a>
                            </div>
		                </div>
		                <!--About Us Image End-->
		            </div>
		            <div class="col-lg-6 col-12">
		                <!--About Us Content Start-->
		                <div class="about-us-content">
		                    <h2>我们的网站</h2>
		                    <p class="mb-20">是中国深受欢迎的网购零售平台，目前拥有近5亿的注册用户数，每天有超过6000万的固定访客，同时每天的在线商品数已经超过了8亿件，平均每分钟售出4.8万件商品。截止2011年年底，淘宝网单日交易额峰值达到43.8亿元，创造270.8万直接 且充分就业机会。随着淘宝网规模的扩大和用户数量的增加，淘宝也从单一的C2C网络集市变成了包括C2C、团购、分销、拍卖等多种电子商务模式在内的综合性零售商圈。目前已经成为世界范围的电子商务交易平台之一。</p>
		                    <p class="mb-20">淘宝网致力于推动“货真价实、物美价廉、按需定制”网货的普及，帮助更多的消费者享用海量且丰富的网货，获得更高的生活品质；通过提供网络销售平台等基础性服务，帮助更多的企业开拓市场、建立品牌，实现产业升级；帮助更多胸怀梦想的人通过网络 实现创业就业。新商业文明下的淘宝网，正走在创造1000万就业岗位这下一个目标的路上。

淘宝网不仅是中国深受欢迎的网络零售平台，也是中国的消费者交流社区和全球创意商品的集中地。淘宝网在很大程度上改变了传统的生产方式，也改变了人们的生活消费方式。不做冤大头、崇尚时尚和个性、开放擅于交流的心态以及理性的思维，成为淘宝网上崛起的“淘一代”的重要特征。淘宝网多样化的消费体验，让淘一代们乐在其中：团设计、玩定制、赶时髦、爱传统。

9岁的淘宝，从“牙牙学语”时的稚嫩懵懂到“青春少年”的活力潮流，用一种特殊的气质影响并改变着淘宝上的消费者、商家的流行态度和风尚趋势。从淘便宜、淘方便到淘个性，潮流的气质影响着潮流的行为，潮流的平台揭示着潮流的趋势——淘宝网引领的淘潮流时代已然来临。
		                </div>
		                <!--About Us Content End-->
		            </div>
		        </div>
		    </div>
		</div>
		<!--About Us Area End-->
		<!--About Us Team Start-->
		<div class="about-us-team-area mt-45">
		    <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="team-title mb-50">
                            <h3 class="about-title">我们的团队</h3>
                            <p>我们的团队是世界最顶尖的团队之一</p>
                        </div>
                    </div>
                </div>
		        <div class="row">
		            <div class="col-md-4">
		                <!--Single Team Start-->
		                <div class="single-team mb-30">
		                    <div class="team-image img-full">
		                        <a href="#"><img src="img/gay军.JPG" alt=""></a>
		                    </div>
		                    <div class="team-content">
		                        <div class="team-hover-info">
		                            <h2><a href="#">陈志军</a></h2>
		                            <ul class="team-social">
		                                <li><a href="#"><i class="ion-social-twitter"></i></a></li>
		                                <li><a href="#"><i class="ion-social-instagram"></i></a></li>
		                                <li><a href="#"><i class="ion-social-facebook"></i></a></li>
		                                <li><a href="#"><i class="ion-social-googleplus"></i></a></li>
		                            </ul>
		                        </div>
		                    </div>
		                </div>
		                <!--Single Team End-->
		            </div>
		            <div class="col-md-4">
		                <!--Single Team Start-->
		                <div class="single-team mb-30">
		                    <div class="team-image img-full">
		                        <a href="#"><img src="img/瘦瘦.JPG" alt=""></a>
		                    </div>
		                    <div class="team-content">
		                        <div class="team-hover-info">
		                            <h2><a href="#">郑亮宏</a></h2>
		                            <ul class="team-social">
		                                <li><a href="#"><i class="ion-social-twitter"></i></a></li>
		                                <li><a href="#"><i class="ion-social-instagram"></i></a></li>
		                                <li><a href="#"><i class="ion-social-facebook"></i></a></li>
		                                <li><a href="#"><i class="ion-social-googleplus"></i></a></li>
		                            </ul>
		                        </div>
		                    </div>
		                </div>
		                <!--Single Team End-->
		            </div>
		            <div class="col-md-4">
		                <!--Single Team Start-->
		                <div class="single-team mb-30">
		                    <div class="team-image img-full">
		                        <a href="#"><img src="img/泽群.JPG" alt=""></a>
		                    </div>
		                    <div class="team-content">
		                        <div class="team-hover-info">
		                            <h2><a href="#">陈泽群</a></h2>
		                            <ul class="team-social">
		                                <li><a href="#"><i class="ion-social-twitter"></i></a></li>
		                                <li><a href="#"><i class="ion-social-instagram"></i></a></li>
		                                <li><a href="#"><i class="ion-social-facebook"></i></a></li>
		                                <li><a href="#"><i class="ion-social-googleplus"></i></a></li>
		                            </ul>
		                        </div>
		                    </div>
		                </div>
		                <!--Single Team End-->
		            </div>
		        </div>
		    </div>
		</div>
		<!--About Us Team End-->
		<!-- Testimonial Style 2 Section Start -->
		<div class="testimonial-style-2 mt-50">
		    <div class="container">
		        <div class="row">
		            <div class="testimonial-slider owl-carousel">
		                <div class="col-12 col-lg-8 ml-auto mr-auto">
                            <!--Single Testimonial Start-->
                            <div class="single-testimonial-style-2 text-center">
                                <div class="testimonial-content-2">
                                    <p>Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram.</p>
                                </div>
                                <div class="testimonial-author-2">
                                    <img src="img/testimonial/testimonial1.png" alt="">
                                    <div class="author-title-2">
                                        <p class="author-name-2">orando BLoom</p>
                                        <p class="author-email-2">demo@hastech.company</p>
                                    </div>
                                </div>
                            </div>
                            <!--Single Testimonial End-->
                        </div>
		                <div class="col-12 col-lg-8 ml-auto mr-auto">
                            <!--Single Testimonial Start-->
                            <div class="single-testimonial-style-2 text-center">
                                <div class="testimonial-content-2">
                                    <p>Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram.</p>
                                </div>
                                <div class="testimonial-author-2">
                                    <img src="img/testimonial/testimonial1.png" alt="">
                                    <div class="author-title-2">
                                        <p class="author-name-2">Md Shohel</p>
                                        <p class="author-email-2">demo@hastech.company</p>
                                    </div>
                                </div>
                            </div>
                            <!--Single Testimonial End-->
                        </div>
		                <div class="col-12 col-lg-8 ml-auto mr-auto">
                            <!--Single Testimonial Start-->
                            <div class="single-testimonial-style-2 text-center">
                                <div class="testimonial-content-2">
                                    <p>Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram.</p>
                                </div>
                                <div class="testimonial-author-2">
                                    <img src="img/testimonial/testimonial1.png" alt="">
                                    <div class="author-title-2">
                                        <p class="author-name-2">orando BLoom</p>
                                        <p class="author-email-2">demo@hastech.company</p>
                                    </div>
                                </div>
                            </div>
                            <!--Single Testimonial End-->
                        </div>
		            </div>
		        </div>
		    </div>
		</div>
		<!-- Testimonial Style 2 Section End -->
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
                                  <a class="active" data-toggle="tab" id="single-slide-tab-1" href="#single-slide1"><img src="img/single-product/small/small1.jpg" alt=""></a>
                              </div>
                              <div class="single-tab-menu img-full">
                                  <a data-toggle="tab" id="single-slide-tab-2" href="#single-slide2"><img src="img/single-product/small/small2.jpg" alt=""></a>
                              </div>
                              <div class="single-tab-menu img-full">
                                  <a data-toggle="tab" id="single-slide-tab-3" href="#single-slide3"><img src="img/single-product/small/small3.jpg" alt=""></a>
                              </div>
                              <div class="single-tab-menu img-full">
                                  <a data-toggle="tab" id="single-slide-tab-4" href="#single-slide4"><img src="img/single-product/small/small4.jpg" alt=""></a>
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
                              <p>Long printed dress with thin adjustable straps. V-neckline and wiring under the bust with ruffles at the bottom of the dress.</p>
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
	<script type="text/javascript">
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
 </script>
</body>
</html>
