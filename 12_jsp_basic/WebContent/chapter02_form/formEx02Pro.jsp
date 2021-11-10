<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 전송 기초</title>
</head>
<body>
	
	<% 
	
		request.setCharacterEncoding("utf-8");
		
		String data1 = request.getParameter("data1");
		String data2 = request.getParameter("data2");
		String data3 = request.getParameter("data3");
		String data4 = request.getParameter("data4");
		String data5 = request.getParameter("data5");
		String data6 = request.getParameter("data6");
		String data7 = request.getParameter("data7");
		String data8 = request.getParameter("data8");
		String data9 = request.getParameter("data9");
		String[] data10 = request.getParameterValues("data10");
		
	%>
	
	<fieldset>
		<p>1. 텍스트 : <%=data1 %></p>
		<p>2. 패스워드 : <%=data2 %></p>
		<p>3. 셀렉트 : <%=data3 %></p>
		<p>4. 라디오 : <%=data4 %></p>
		<p>5. 텍스트 에어리어 : <%=data5 %></p>
		<p>6. 히든 : <%=data6 %></p>
		<p>7. 이메일 : <%=data7 %></p>
		<p>8. 날짜 : <%=data8 %></p>
		<p>9. 숫자 : <%=data9 %></p>
		<p>
			10. 체크박스 : 
			<% 
				for(int i=0; i<data10.length; i++) {
			%>		
					<%=data10[i] %> &emsp;
			<% 
				}
			%>
		</p>
	</fieldset>
	
</body>
</html>