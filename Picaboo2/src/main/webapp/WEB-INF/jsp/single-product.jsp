<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<%
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
pageContext.setAttribute("basePath", basePath);
%>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>商品详情</title>
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
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<script src="${pageScope.basePath}js/vendor/modernizr-2.8.3.min.js"></script>
    <script src="${pageScope.basePath}js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="${pageScope.basePath}js/ie-emulation-modes-warning.js"></script>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                            <h1 class="breadmome-name">单个商品</h1>
		                    <ul>
		                        <li><a href="index.jsp">首页</a></li>
		                        <li class="active">单个商品</li>
		                    </ul>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<!--Breadcrumb Area End-->
		<!--Single Product Start-->
		<div class="single-product-area mt-80">
		    <div class="container">
		        <div class="row">
                    <div class="col-md-5">
                        <!--大图片显示-->
                        <div class="tab-content product-details-large" id="myTabContent-3">
                           <c:set var='flag' value='1'/>
                          <c:forEach items="${photolist}" var="pl">
                              <c:choose>
                                  <c:when test='${flag==1}'>
                                    <c:set var='flag' value='2'/>
                                      <div class="tab-pane fade show active" id="single-slide-one">
                                      <div class="single-product-img img-full">
                                      <img src="/img/${pl.gphoto_path}"  alt="商品" width="470px" height="380px">
                                       <a class="venobox" data-gall="gallery01" href="/img/${pl.gphoto_path}" width="470px" height="380px"><i class="fa fa-search-plus"></i></a>
                                      </div>
                                      </div>
                                  </c:when>
                                   <c:otherwise>
                                        <div class="tab-pane fade" id="single-slide-two">
                                        <!--大图2-->
                                        <div class="single-product-img img-full">
                                        <img src="/img/${pl.gphoto_path}" alt="商品" width="470px" height="380px">
                                       <a class="venobox" data-gall="gallery01" href="/img/${pl.gphoto_path}" ><i class="fa fa-search-plus"></i></a>
                                     </div>
                                     </div>
                                   </c:otherwise>
                              </c:choose>
                          </c:forEach>
                        </div>
                        <!--大图显示结束-->
                        <!--切换图片-->
                        <div class="single-product-menu">    
                            <div class="nav single-slide-menu" role="tablist">
                               <c:set var='flag' value='1'/>
                                <c:forEach items="${photolist}" var="pl">
                                <c:choose>
                                  <c:when test='${flag==1}'>
                                    <c:set var='flag' value='2'/>
                                       <div class="single-tab-menu img-full">
                                        <a class="active" data-toggle="tab" href="#single-slide-one"><img src="/img/${pl.gphoto_path}" width="100px" height="100px"alt="商品"></a>
                                       </div>
                                  </c:when>
                                  <c:otherwise>
                                       <div class="single-tab-menu img-full">
                                        <a data-toggle="tab" href="#single-slide-two"><img src="/img/${pl.gphoto_path}" width="100px" height="100px"alt="商品"></a>
                                        </div>
                                   </c:otherwise>
                                   </c:choose>
                                 </c:forEach>
                            </div>         
                        </div>
                        <!--切换图片结束-->
                    </div>
                    <div class="col-md-7">
                        <div class="single-product-content">
                            <h1 class="single-product-name">${goodmess.goods_name}</h1>
                            <div class="single-product-reviews">
                              <c:forEach begin="1" end="${goodmess.goods_level}">
                                 <i class="fa fa-star"></i>
                              </c:forEach>
                            </div>
                            <div class="single-product-price">
                                <div class="product-discount">
                                    <span class="price">￥${goodmess.goods_price}</span>
                                </div>
                            </div>
                            <div class="product-info">
                                <p>${goodmess.goods_info}</p>
                            </div>
                            <div class="single-product-action">
                                <form action="#">
                                    <div class="product-variants">
                                        <div class="product-variants-item">
                                            <span class="control-label">尺寸</span>
                                            <select onchange="stockchange()" id="sizelist"class="nice-select" name="size">
                                               <!-- 这里是选择下拉框 -->
                                                <c:forEach items="${goodssize}" var="gs">
                                                   <option class='size' value='${gs.goods_size}' onclick=''>${gs.goods_size}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="product-add-to-cart">
                                        <span class="control-label">数量</span>
                                       <div class="cart-plus-minus">
											<input onchange="judgenum()" type="number" min="1" id="qty" value="1">
									   </div>
                                         <div class="add">
                                             <button onclick="addcart()" class="add-to-cart"><i class="ion-bag"></i>加入购物车</button>
                                             <span class="product-availability">库存量:<span id="agoodstock">${goodmess.goods_stock}</span></span>
                                         </div>
                                    </div>
                                </form>
                                <!--Single Product Share-->
                                <div class="single-product-share mt-20">
                                    <ul>
                                       <li class="categories-title">分享到:</li>
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                    </ul>
                                </div>
                                <!--Single Product Share-->
                            </div>
                            <!--Block Reassurance-->
                            <div class="block-reassurance mt-30">
                                <ul>
                                    <li>
                                        <div class="block-reassurance-item">
                                            <img src="img/icon/single-icon1.png" alt="">
                                            <span>质量保障(七天之内无理由退换货)</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="block-reassurance-item">
                                            <img src="img/icon/single-icon2.png" alt="">
                                            <span>物流保障(物流由六神极速达提供)</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="block-reassurance-item">
                                            <img src="img/icon/single-icon3.png" alt="">
                                            <span>安全保障(绝不会泄露用户个人信息)</span>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <!--Block Reassurance-->
                        </div>
		            </div>
		        </div>
		    </div>
        </div>
		<!--Single Product End-->
		<!--Single Product Review Tab Start-->
		<div class="single-product-review-tab mt-80">
		    <div class="container">
               <div class="row">
                 <div class="col-md-12">
                       <div class="single-product-review-and-description-area">
                           <!--Review And Description Tab Menu Start-->
                           <ul class="nav dec-and-review-menu">
                              <li>
                                <a class="active" data-toggle="tab" href="#description">介绍</a>
                              </li>
                              <li>
                                <a data-toggle="tab" href="#product-details">商品详情</a>
                              </li>
                              <li>
                                <a data-toggle="tab" href="#reviews">评价</a>
                              </li>
                            </ul>
                            <!--Review And Description Tab Menu End-->
                            <!--Review And Description Tab Content Start-->
                            <div class="tab-content product-review-content-tab mt-30" id="myTabContent-4">
                              <div class="tab-pane fade show active" id="description">
                                  <div class="single-product-description">
                                      <p>${goodmess.goods_info}</p>
                                  </div>
                              </div>
                              <div class="tab-pane fade" id="product-details">
                                  <div class="product-details">
                                      <div class="product-manufacturer">
                                          <a href="#">
                                              <img src="img/logo/logo.jpg" alt="">
                                          </a>
                                      </div>
                                    <%--   <div class="product-reference">
                                          <label class="label">商品类别:</label> <span class="demo-list">${goodmess.g}</span>
                                      </div> --%>
                                      <div class="product-quantities">
                                          <label class="label">库存量:</label> <span class="item">${goodmess.goods_stock}</span>
                                      </div>
                                      <div class="product-out-of-stock"></div>
                                      <div class="product-features">
                                          <h3>数据表</h3>
                                          <div class="table-responsive">
                                              <table class="table">
                                                  <tr>
                                                      <td>规格</td>
                                                      <td id="gsize">${goodmess.goods_size}</td>
                                                  </tr>
                                                  <tr>
                                                      <td>价格</td>
                                                      <td>${goodmess.goods_price}</td>
                                                  </tr>
                                              </table>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                              <!-- 评论区 -->
                              <div class="tab-pane fade" id="reviews">
                                  <div class="review-page-comment">
                               
                                       <table class="table">
                                       <tr>
                                         <th>评价内容</th>
                                         <th>用户id</th>
                                         <th>评价日期</th> 
                                         <th>评价等级</th>     
                                       </tr>                 
                                           <c:forEach items="${goodseva}" var="geva">                
                                            <tr>
                                              <td>${geva.geva_text}</td>
                                              <td>${geva.user_id}</td>
                                              <td>${geva.geva_date}</td>
                                              <td>${geva.geva_level}</td>
                                            </tr>       
                                            </c:forEach>
                              </table>
                                  </div>
                              </div>
                              
                              <!-- 评论区 -->
                            </div>
                            <!--Review And Description Tab Content End-->
                       </div>
                   </div>
               </div>
            </div>
		</div>
		<!--Single Product Review Tab End-->
		<!--Product Area Start-->
		<div class="product-area mt-55">
		    <div class="container">
		        
		     
		    </div>
		</div>
		<!--Product Area End-->
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
                     <li class="categories-title">Share:</li>
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

    <script type="text/javascript">
      
     //加入购物车
       function addcart(){	 
       	$.post("gs?op=ac",{user_id:"${user.user_id}",goods_id:"${goodmess.goods_id}",goods_num:$("#qty").val(),goods_size:$("#sizelist").val(),goods_stock:$("#agoodstock").html()},function(data){
       		if(data==1){
       			alert("添加成功")
       		}else if(data==2){
       			alert("超出库存")
       		}else{
       			alert("添加失败")
           	/* 	location.href="login.jsp";	    */  		 
       		}
       	})
       }
       
     
     //页面初始化加载商品
       window.onload=function(){
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
    	   for(var i=0;i<'${level}';i++){
 			  var start_op=start_op+"<i class='"+"fa fa-star"+"'></i>";
 		   }
       } 
     
     //所选类别发生变化时库存发生改变
      function stockchange(){
    	$.post("gs?op=gst",{goods_size:$("#sizelist").val(),goods_id:'${goodmess.goods_id}'},function(data){  
    		 $("#gsize").html($("#sizelist").val()) 
           	 $("#agoodstock").html(data)       		 
     	});
      }
      
    //判断购买数量是否超出库存
      function judgenum(){
      	$("#qty").attr("max",$("#agoodstock").html())
      } 
    </script>



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
