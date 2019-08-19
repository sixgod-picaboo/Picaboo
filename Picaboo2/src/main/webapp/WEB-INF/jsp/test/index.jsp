<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/login.html"
		method="post">
		<p>
			账号：<input type="text" name="userCode">
		</p>
		<p>
			密码：<input type="password" name="userPassword">
		</p>
		<p>
			<input type="submit" value="登录">
		</p>
	</form>
</body>
</html>