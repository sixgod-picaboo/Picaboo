<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	pageContext.setAttribute("basePath", basePath);
%>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>商品列表</title>
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
<script src="${pageScope.basePath}js/ie8-responsive-file-warning.js"></script>
<![endif]-->
<script src="${pageScope.basePath}js/ie-emulation-modes-warning.js"></script>

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
										<li class="active"><a href="gs?op=queryByName">购物</a></li>
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
										<!-- 循环得到商品类型列表 -->
										<c:forEach items="${typelist}" var="typelist">
											<li><a href="gs?typeid=${typelist.gtype_id}">${typelist.gtype_name}</a></li>
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
							<h1 class="breadmome-name">购物</h1>
							<ul>
								<li><a href="index.jsp">首页</a></li>
								<li class="active">购物</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--Breadcrumb Area End-->
		<!--Shop Area Start-->
		<div class="shop-area mt-80">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 order-2 order-lg-1">
						<!--Shop Product Categorie Start-->
						<div class="shop-product-cate mb-20">
							<h3><%=session.getAttribute("typename")%></h3>
						</div>
						<!--Shop Product Categorie End-->

						<!--价格区间-->
						<div class="shop-sidebar mb-20">
							<h3>类别</h3>
							<div class="shop-checkbox">
								<ul>
									<!-- <li><input name="price-filter" checked="" type="radio"><a
										href="#">$18.00 - $21.00 (1)</a></li>
									<li><input name="price-filter" checked="" type="radio"><a
										href="#">$30.00 - $37.00 (1)</a></li>
									<li><input name="price-filter" checked="" type="radio"><a
										href="#">$54.00 - $62.00 (1)</a></li>
									<li><input name="price-filter" checked="" type="radio"><a
										href="#">$72.00 - $83.00 (1)</a></li>
									<li><input name="price-filter" checked="" type="radio"><a
										href="#">$90.00 - $94.00 (1)</a></li>
									<li><input name="price-filter" checked="" type="radio"><a
										href="#">$96.00 - $125.00 (1)</a></li>
									<li><input name="price-filter" checked="" type="radio"><a
										href="#">$176.00 - $364.00 (7)</a></li> -->
								</ul>
							</div>
						</div>
						<!--价格区间-->

					</div>
					<div class="col-lg-9 order-1 order-lg-2">
						<div class="shop-layout">
							<!--Grid & List View Start-->
							<div
								class="shop-topbar-wrapper mb-30 d-md-flex justify-content-md-between align-items-center">
								<div class="grid-list-option">
									<ul class="nav">
										<li><a class="active" data-toggle="tab" href="#grid"><i
												class="ion-grid show_grid"></i></a></li>
										<li><a data-toggle="tab" href="#list"><i
												class="ion-android-menu show_list"></i></a></li>
									</ul>
									<p class="show-product">共找到${goodspagedata.total}件该类型的商品</p>
								</div>
							</div>
							<!--Grid & List View End-->


							<!--商品显示布局-->
							<div class="shop-product">
								<div id="myTabContent-2" class="tab-content">
									<!--第一种排列方式-->
									<div id="grid" class="tab-pane fade show active">
										<div class="product-grid-view">
											<div id="first_kind"class="row">
												
											</div>
										</div>
									</div>
									<!--第一种排列方式-->

									<!--第二种排列方式-->
									<div id="list" class="tab-pane fade">
										<div class="product-list-view">
											<div class="product-list-item mb-40">
												<div id="second_kind" class="row">
													<!--商品显示开始-->
													<c:forEach items="${goodslist}" var="goodslist">
														<div class="col-md-4">
															<div class="single-product">
																<div class="product-img">
																	<a href="single-product.jsp"> <img
																		class="first-img" src="img/product/product6.jpg"
																		alt=""> <img class="hover-img"
																		src="img/product/product7.jpg" alt="">
																	</a> <span class="sticker">New</span>
																</div>
															</div>
														</div>
														<div class="col-md-8">
															<div class="product-content shop-list">
																<h4>
																	<a href="single-product.jsp">商品名</a>
																</h4>
																<div class="product-price">
																	<span class="price">$80.00</span>
																</div>
																<div class="product-reviews">
																	<i class="ion-android-star"></i> <i
																		class="ion-android-star"></i> <i
																		class="ion-android-star"></i> <i
																		class="ion-android-star"></i> <i
																		class="ion-android-star"></i>
																</div>
																<div class="product-description">
																	<p>这里是商品详情</p>
																</div>
																<div class="product-list-action">
																	<ul>
																		<li><a class="pro-add-btn" href="#"><i
																				class="ion-bag"></i>加入购物车</a></li>
																		<li><a href="#open-modal" data-toggle="modal"><i
																				class="ion-eye"></i></a></li>
																		<li><a href="#"><i
																				class="ion-ios-copy-outline"></i></a></li>
																	</ul>
																</div>
															</div>
														</div>
													</c:forEach>
													<!--商品显示结束-->
												</div>
											</div>
										</div>
									</div>
									<!--第二种布局结束-->

									<div
										class="pagination-product d-md-flex justify-content-md-between align-items-center">
										<div class="showing-product">
											<p>展示1-<a id="numcode"></a>条数据</p>
										</div>
										<div class="page-list">
											<ul>
												<li class="prev"><a onclick="lastpage()" href="#"><i class="ion-ios-arrow-left"></i>上一页</a></li><li id="pagediv"></li>
												<span class="nowpage"></span>
												<!-- 获取分页的总页数 -->
<%-- 												  <c:forEach begin="1" end="${goodspagedata.totalPage}">
													 <li class="active"><a  id="pagenum" name="page" href="#">${pages}</a></li>
													  <c:set value="${pages+1}" var="pages" /> --%>
												<li class="next"><a onclick="nextpage()" href="#">下一页<i class="ion-ios-arrow-right"></i></a></li>
											</ul>
										</div>
									</div>
									<!--分页结束-->
								</div>
							</div>
							<!--商品显示区域结束-->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--Shop Area End-->

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


		<!--详情弹窗-->
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
								<!--大框的图片区-->
								<div class="tab-content product-details-large" id="myTabContent">
									
								</div>
								<!--大框的图片区-->
								<!--图片切换-->
								<div class="single-product-menu">
									
								</div>
								<!--图片切换-->
							</div>
							<!--Modal Img-->
							<!--Modal Content-->
							<div class="col-md-7">
								<div class="single-product-content">
									<h1 id="agoodname" class="single-product-name">这里是商品名</h1>
									<div class="single-product-reviews">
										<i class="fa fa-star"></i>
									</div>
									<div class="single-product-price">
										<div class="product-discount">
											<span id="agoodprice" class="price">￥16.40</span>
										</div>
									</div>
									<div id="agoodinfo" class="product-info">
										<p>这里是商品详情</p>
									</div>
									<div class="single-product-action">
										<form action="#">
											<div class="product-variants">
												<div class="product-variants-item">
													<span class="control-label">规格</span> <select id="sizelist"
														class="form-control" name="size">
													</select>
												</div>
											</div>
											<div class="product-add-to-cart">
												<span class="control-label">数量</span>
												<div class="cart-plus-minus">
													<input onchange="judgenum()" type="number" min="1"
														id="qtybutton" value="0">
													<!--  class="cart-plus-minus-box" -->
												</div>
												<div class="add">
													<button onclick="addcart()" class="add-to-cart">
														<i class="zmdi zmdi-shopping-cart-plus"></i>加入购物车
													</button>
													<span class="product-availability"><i
														class="zmdi zmdi-check"></i>库存:<span id="agoodstock"></span></span>
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
						<!--产品分享-->
						<div class="single-product-share">
							<ul>
								<li class="categories-title">分享到 :</li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
							</ul>
						</div>
						<!--产品分享-->
					</div>
				</div>
			</div>
		</div>
		<!-- 详情弹窗 -->
	</div>


	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	<script type="text/javascript">
        //用变量存储点击的商品id
        var selectgoodsid=""
        var stock=1
        var start_num=0
        var page=1
        var pagenum=0
        
        //页面初始化加载商品
         $(function(){
         	goodspage(1)
          	
         })
        
        
        //下一页
        function nextpage(){
        	if(page==(pagenum)){
        		alert("最后一页")
        	}else{ 	      	  
        	  page=page+1
        	  goodspage(page)
        	}
        }
        //上一页
        function lastpage(){
        	if(page==1){
        		alert("已经是第一页")
        	}else{	 
        	  page=page-1
        	  goodspage(page)
        	}
        }
        //商品分页
        function goodspage(page){
        	$.ajaxSettings.async = false;
        	$.getJSON("gs?op=choose",{page:page,pageSize:"9"},function(data){
        		$("#first_kind").html("")
        		$("#second_kind").html("")
        		var inner1=""
        		var inner2=""
        		var innerpage=""
        		$("#numcode").html(data.total)
        		pagenum=data.totalPage
        		var goodlist=data.data
        		for(var i=0;i<data.data.length;i++){	
        		inner1=inner1+"<div class='col-lg-4 col-xl-4 col-md-4'><div class='single-product mb-30'><div class='product-img'><a href='gs?op=sp&goods_id="+goodlist[i].goods_id+"&goods_size="+goodlist[i].goods_size+"'>"+
                      "<img class='first-img' src='/img/"+goodlist[i].list_photo[0].gphoto_path+"' alt='/img/none.jpg' height='200px' />"+
                        "<img class='hover-img' src='/img/"+goodlist[i].list_photo[1].gphoto_path+"' alt='/img/none.jpg height='200px''/>"+ 
                        "<span class='sticker'>New</span><div class='product-action'><ul>"+
                        "<li><a href='#open-modal' data-toggle='modal' ><i id='"+i+"' class='ion-eye eyes1'><input type='hidden' id='id"+i+"' value='"+goodlist[i].goods_id+"'><input type='hidden' id='size"+i+"' value='"+goodlist[i].goods_size+"'></i></a></li>"+
                        "</ul></div></div><div class='product-content'><h4><a href='single-product.jsp'>"+goodlist[i].goods_name+"</a></h4>"+
                        "<div class='product-price'><span class='price'>￥"+goodlist[i].goods_price+"</span></div></div></div></div>"
        		inner2=inner2+"<div class='col-md-4'><div class='single-product'><div class='product-img'><a href='single-product.jsp'> <imgclass='first-img' src='/img/"+goodlist[i].list_photo[0].gphoto_path+"' height='200px'"+
						"alt=''> <img class='hover-img' src='/img/"+goodlist[i].list_photo[1].gphoto_path+"' height='200px'alt=''></a> <span class='sticker'>New</span></div></div></div>"+
		                "<div class='col-md-8'><div class='product-content shop-list'><h4><a href='single-product.jsp'>"+goodlist[i].goods_name+"</a></h4><div class='product-price'>"+
					    "<span class='price'>￥"+goodlist[i].goods_price+"</span></div><div class='product-description'><p>"+goodlist[i].goods_info+"</p></div> <ul> "+
						" <div class='product-list-action'><ul><li><a href='#open-modal' data-toggle='modal'><i id='"+i+"' class='ion-eye eyes1'><input type='hidden' id='id"+i+"' value='"+goodlist[i].goods_id+"'><input type='hidden' id='size"+i+"' value='"+goodlist[i].goods_size+"'></i></a></li></ul></div></a></li></a></li></ul></div></div></div>"
        		 
        		}
        		
        		/* for(var i=0;i<data.totalPage;i++){
        			innerpage=innerpage+"<p class='active'><a onclick='' name='page' href='#'>"+(i+1)+"</a></p>"
        		}*/
        		$("#pagediv").html("当前是第"+page+"页")
                $("#first_kind").html(inner1)
                $("#second_kind").html(inner2)
                $(".eyes1").click(function(){
                 var id=this.id
                 var myid = $("#id"+id).val()
                 var mysize = $("#size"+id).val()
                 getdetail(myid,mysize)
                })
                
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
               
        	})
        	$.ajaxSettings.async = true;
        }
        
        //获取具体商品
      function getdetail(goods_id,goods_size){
                	
                	$("#sizelist").html(' ');
                	$(".single-product-reviews").html(' ');
                	$("#slide").html(' ');
                	$("#myTabContent").html(' ');
                	$.getJSON("gs?op=dl",{goods_id:goods_id,goods_size:goods_size},function(data){          		   
                		   $("#agoodname").html(data.good.goods_name);
                		   $("#agoodprice").html("$"+data.good.goods_price);
                		   $("#agoodinfo").html(data.good.goods_info);
                		   $("#agoodstock").html(data.good.goods_stock);
                		   stock=data.good.goods_stock//选中的商品的库存
                		   selectgoodsid=data.good.goods_id//选中的商品的id       		   
                		   start_num=data.level//选中的商品的评价等级
                		   //动态加载商品评价等级
                          var start_op=''               	  
                		   for(var i=0;i<start_num;i++){
                			  var start_op=start_op+"<i class='"+"fa fa-star"+"'></i>"
                		   }
                		   $(".single-product-reviews").html(start_op) 
                		   //动态加载大图片
                		    var photosbig=''
                		    var photolist=data.photolist
                		    for(var i=0;i<photolist.length;i++){
                		    	if(i==0){
                    			   var photosbig=photosbig+"<div class='tab-pane fade show active' id='single-slide"+(i+1)+"' role='tabpanel' aria-labelledby='single-slide-tab-"+(i+1)+"'><div class='single-product-img img-full'><img src='/img/"+photolist[i].gphoto_path+"' alt='/img/none.jpg'></div></div>"
                		    	}else{
                		    	   var photosbig=photosbig+"<div class='tab-pane fade' id='single-slide"+(i+1)+"' role='tabpanel' aria-labelledby='single-slide-tab-"+(i+1)+"'><div class='single-product-img img-full'><img src='/img/"+photolist[i].gphoto_path+"' alt='/img/none.jpg'></div></div>"
                		    	}
                		    }  
                 			$("#myTabContent").html(photosbig)
                		   //动态加载小图片	     
            	         var photos=''
            	            var photolist=data.photolist
            	           for(var i=0;i<photolist.length;i++){
            	        	   if(i==0){
               			          var photos=photos+"<div class='single-tab-menu img-full'><a class='active' data-toggle='tab' id='single-slide-tab-"+(i+1)+"' href='#single-slide"+(i+1)+"'><img src='/img/"+photolist[i].gphoto_path+"' alt='/img/none.jpg'></a></div>"
            	        	   }else{
            	        		   var photos=photos+"<div class='single-tab-menu img-full'><a data-toggle='tab' id='single-slide-tab-"+(i+1)+"' href='#single-slide"+(i+1)+"'><img src='/img/"+photolist[i].gphoto_path+"' alt='/img/none.jpg'></a></div>" 
            	        	   }
            	        	}  
            				$("#slide").html(photos)
                		    //动态加载商品类型下拉框
                		   var goodssize=data.listsize
                		   var option=''
                		   for(var i=0;i<goodssize.length;i++){
                			   var option=option+"<option class='size' value='"+goodssize[i].goods_size+"' onclick=''>"+goodssize[i].goods_size+"</option>"
                		   }   
                		    $("#sizelist").html(option)  
                		    $('#sizelist').change(function(){
             				 $.post("gs?op=gst",{goods_size:this.value,goods_id:selectgoodsid},function(data){  
             					     stock=data
             	            		 $("#agoodstock").html(data)    	            		 
             	            }) 
           
             			})
                		   
                	})
                }

       //判断购买数量是否超出库存
        function judgenum(num){
        	$("#qtybutton").attr("max",stock)
        } 
       //加入购物车
        function addcart(){	 
           	$.post("gs?op=ac",{user_id:"${user.user_id}",goods_id:"${goodmess.goods_id}",goods_num:$("#qtybutton").val(),goods_size:$("#sizelist").val(),goods_stock:$("#agoodstock").html()},function(data){
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
