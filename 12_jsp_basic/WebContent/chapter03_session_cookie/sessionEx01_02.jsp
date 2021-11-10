<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인화면</title>
</head>
<body>
	
	<h2>로그인 화면</h2>
	
	<%
	
		request.setCharacterEncoding("utf-8");
	
		String id     = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
	%>
	
	
	<p><a href="sessionEx01_03.jsp">마이페이지로 이동</a></p>
	<p><a href="sessionEx01_04.jsp">장바구니로 이동</a></p>
	

</body>
</html>