<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		boolean loginOK = session.getAttribute("login") == null ? false : true;
		
		
		if(loginOK){
		%>
		<a href = "sessionLogout.jsp">로그아웃</a>
		<%
			}
		else{
		%>
		<a href = "sessionLoginForm.jsp">로그인</a>
		<%
		}
		%>
</body>
</html>