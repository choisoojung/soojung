<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 아이디와 비번이 같으면 로그인 되었다고 처리할 것 -->
<%
   String id = request.getParameter("id");
   String passwd = request.getParameter("passwd");
   
   if(id.equals(passwd)){
      session.setAttribute("login","OK");
      response.sendRedirect("sessionLoginCheck.jsp");
   }
   else{
%>
   <script type="text/javascript">
      alert('로그인 실패');
      history.back();
   </script>
<%
   }
%>
</body>
</html>