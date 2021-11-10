<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문</title>
</head>
<body>
	
	<h2>조건문</h2>
	<% 
	
		String name = "제임스";
		
		if (name.equals("제임스st")) {
	%>
			<p>제임스 입니다.</p>
	<% 		
		}
		else {
	%>
			<p>제임스가 아닙니다.</p>
	<% 		
		}
	%>

	<hr>
	<h2>반복문</h2>
	<% 
		for (int i = 0; i < 10; i++) {
	%>
			<p>데이터 <%=i %></p>
	<% 
		}
	%>
	<hr>
	<% 
		int idx = 0;
		while (idx < 10) {
	%>
			<p>데이터<%=idx %></p>
	<% 	
			idx++;
		}
	%>

</body>
</html>