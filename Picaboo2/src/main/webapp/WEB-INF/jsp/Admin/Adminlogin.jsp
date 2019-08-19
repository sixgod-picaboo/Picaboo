<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
pageContext.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理员登录</title>

    <link href="${pageScope.basePath}dist/css/bootstrap.min.css" rel="stylesheet">

    <link href="${pageScope.basePath}dist/css/signin.css" rel="stylesheet">
    
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>

</head>
<body>
	<c:if test="${sessionScope.msg != null}">
		<c:out value="${sessionScope.msg}"></c:out>
	</c:if>
<div class="container">

      <form class="form-signin" method="get" action="${pageContext.request.contextPath}/LoginServlet">
        <h2 class="form-signin-heading">请登录</h2>
        <input type="text" name="adminId" id="adminId" class="form-control" placeholder="请输入账号" required autofocus>
        <input type="password" name="password" id="password"  class="form-control" placeholder="请输入密码" required>
        <div class="checkbox">
        </div>
        <button class="btn btn-lg btn-primary btn-block login" type="submit">登录</button>
      .</form>
    </div> <!-- /container -->
</body>
<c:forEach items="${pageContext.request.cookies}" var="c">
	<c:if test="${c.name!=null && c.name eq 'username'}">
		<script>
			$("#adminId").val("${c.value}")
		</script>
	</c:if>
</c:forEach>
</html>