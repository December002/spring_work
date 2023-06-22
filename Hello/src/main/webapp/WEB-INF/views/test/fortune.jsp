<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/fortune.jsp</title>
</head>
<body>
	<h1>${requestScope.fortuneToday}</h1>
	<p><a href="/hello/">인덱스로 가기</a></p>
	
</body>
</html>