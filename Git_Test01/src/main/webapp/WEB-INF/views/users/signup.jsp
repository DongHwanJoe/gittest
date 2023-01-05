<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>/views/users/signup.jsp</title>
</head>
<body>
	<div class="container">
		<p>
			<strong>${param.id }</strong> 님 가입 되었습니다.
			<a href="${pageContext.request.contextPath}/users/loginform">로그인</a>
		</p>
	</div>
</body>
</html>