<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>좋아하는 걸파이터를 선택하세요</h1>
<form action="/Day-01/fighterChoice.jsp" method = "POST">
	<input type = "checkbox" name = "fighter" value = "butter.jpg"/>코카앤버터
	<input type = "checkbox" name = "fighter" value = "h.jpg"/>홀리뱅
	<input type = "checkbox" name = "fighter" value = "ygx.jpg"/>YGX
	<input type = "checkbox" name = "fighter" value = "p.png"/>프라우드먼<br>
	<input type = "submit" value = "선택"/>
</form>
</body>
</html>