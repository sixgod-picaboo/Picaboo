<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
pageContext.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>商品类型管理</title>
    <!-- Bootstrap Styles-->
    <link href="${pageScope.basePath}/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="${pageScope.basePath}/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="${pageScope.basePath}/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="${pageScope.basePath}/assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>

<body>
	<c:if test="${requestScope.msg != null}">
		<script type="text/javascript">
			alert("${requestScope.msg}");
		</script>
	</c:if>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">导航</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><i class="fa fa-comments"></i> <strong>主页 </strong></a>
            </div>

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Doe</strong>
                                    <span class="pull-right text-muted">
                                        <em>今天</em>
                                    </span>
                                </div>
                                <div>自16世纪以来，Lorem Ipsum一直是业界标准的虚拟文本...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>昨天</em>
                                    </span>
                                </div>
                                <div>自从kwilnw以来，Lorem Ipsum一直是业界标准的虚拟文本...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>昨天</em>
                                    </span>
                                </div>
                                <div>Lorem Ipsum自此以来一直是业界标准的虚拟文本...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>阅读所有消息</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> 新评论
                                    <span class="pull-right text-muted small">4分钟</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3位新粉丝
                                    <span class="pull-right text-muted small">12分钟</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> 消息已发送
                                    <span class="pull-right text-muted small">4分钟</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i>新任务
                                    <span class="pull-right text-muted small">4分钟</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i>服务器重新启动
                                    <span class="pull-right text-muted small">4分钟</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>查看所有警报</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
        </nav>
        <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                    <li>
                        <a href="${pageContext.request.contextPath}/AdminServlet"><i class="fa fa-dashboard"></i> 用户管理</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/AdminServlet?oop=shop"><i class="fa fa-desktop"></i> 店铺管理</a>
                    </li>
					<li>
                        <a href="#" class="active-menu"><i class="fa fa-bar-chart-o"></i> 商品类型管理</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/Review?oop=shop"><i class="fa fa-qrcode"></i>店铺审核</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/Review?oop=good"><i class="fa fa-qrcode"></i>商品审核</a>
                    </li>
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">


                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                           	商品类型管理 
                        </h1>
                    </div>
                </div>
                <form class="form-inline">
				<div class="form-group">
						<label for="titleLike">商品类型名：</label> <input type="text"
							class="form-control" id="titleLike" name="titleLike"
							value="${sessionScope.titleLike}" placeholder="请输入要查询的商品类型名">
					</div>
					<button type="button" class="btn btn-default" id="like">查询</button>
				</form>
                   	<span style="font-size: 25px">商品类型增加 </span>
                    <a style="margin-left: 10px" id="modal-843654"
					href="#modal-container-843654" data-toggle="modal">
					<button type="button" class="btn btn-success btnupdate">增加</button>
					</a>
				
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>商品类型id</th>
								<th>商品类型名</th>
							</tr>
						</thead>
						<tbody id="tbody">
							<c:forEach items="${sessionScope.pd.data}" var="type">
								<tr>
									<td>${type.gtype_id}</td>
									<td>${type.gtype_name}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div id="pageDiv"></div>
					<div class="container">
						<div class="row clearfix">
							<div class="col-md-12 column">
								<div class="modal fade" id="modal-container-843654"
									role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">×</button>
												<h4 class="modal-title" id="myModalLabel">请输入要增加的类型信息</h4>
											</div>
											<div class="modal-body">
												<form class="form-horizontal" role="form"
													action="${pageContext.request.contextPath}/AdminServlet" method="get">
													<input type="hidden" name="op" value="add" />
													<input type="hidden" name="oop" value="type" />
													<div class="form-group">
														<label for="tname" class="col-sm-2 control-label">类型名</label>
														<div class="col-sm-5">
															<input type="text" class="form-control" id="tname"
																name="tname" required="required"/>
														</div>
													</div>

													<div class="modal-footer">
														<button type="button" class="btn btn-default"
															data-dismiss="modal">关闭</button>
														<button type="submit" class="btn btn-primary">保存</button>
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
				
                                    
    <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="${pageScope.basePath}/assets/js/jquery-1.10.2.js"></script>
    <!-- Bootstrap Js -->
    <script src="${pageScope.basePath}/assets/js/bootstrap.min.js"></script>
	 
    <!-- Metis Menu Js -->
    <script src="${pageScope.basePath}/assets/js/jquery.metisMenu.js"></script>
    <!-- Morris Chart Js -->
    <script src="${pageScope.basePath}/assets/js/morris/raphael-2.1.0.min.js"></script>
	
	
	<script src="${pageScope.basePath}/assets/js/easypiechart.js"></script>
	<script src="${pageScope.basePath}/assets/js/easypiechart-data.js"></script>
	
	<!-- layui的部分呢 -->
	<link rel="stylesheet" href="${pageScope.basePath}/layui/css/layui.css" media="all">
	<script src="${pageScope.basePath}/layui/layui.js" charset="utf-8"></script>
	
	<script>
	layui.use(['laypage', 'layer'], function(){
	var laypage = layui.laypage
	,layer = layui.layer;
	//完整功能
	 laypage.render({
	 elem: 'pageDiv' //显示位置对应的div id
	 ,count: ${sessionScope.pd.total}//总记录数
	 ,curr: ${sessionScope.pd.page} //当前页
	   ,limit:${sessionScope.pd.pageSize}//页面显示数
	    ,layout: ['count', 'prev', 'page','limit','next', 'skip']
	    ,jump: function(obj,first){
	
	    //首次不执行
	      if(!first){
	        //do something
	    	  location.href="${pageContext.request.contextPath}/AdminServlet?oop=type&page="+obj.curr+"&pageSize="+obj.limit+"&titleLike="+$("#titleLike").val();
	      }
	    }
	  });
	 
	});
	</script>
	
	<script type="text/javascript">
		$(function(){
			
			$("#like").click(function(){
				location.href = "${pageContext.request.contextPath}/AdminServlet?oop=type&titleLike=" + $("#titleLike").val();
			});
			
		});
	</script>


</body>

</html>