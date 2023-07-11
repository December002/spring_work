<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/loginform.jsp</title>
<style>
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
</head>
<body class="bg-light">
	<div class="container col-3 position-absolute top-50 start-50 translate-middle
				border border-5-light bg-white">
		<h1 class="mb-6">유사 인스타</h1>
		<form action="${pageContext.request.contextPath}/users/login" method="post">
			<c:choose>
				<c:when test="${ empty param.url }">
					<input type="hidden" name="url" value="${pageContext.request.contextPath}/"/>
				</c:when>
				<c:otherwise>
					<input type="hidden" name="url" value="${param.url }"/>
				</c:otherwise>
			</c:choose>
			<div>
				<label class="form-label" for="id">아이디</label>
				<input class="form-control mb-3" type="text" name="id" id="id"/>
			</div>
			<div>
				<label class="form-label" for="pwd">비밀번호</label>
				<input class= "form-control mb-3" type="password" name="pwd" id="pwd"/>
			</div>
			<div class="d-grid gap-2 mb-3">
			  <button class="btn btn-primary" type="submit">로그인</button>
			</div>
			<div class="mb-6">
				<a href="${pageContext.request.contextPath }/users/signup_form">회원이 아니신가요?</a>
			</div>
		</form>
	</div>
</body>
</html>