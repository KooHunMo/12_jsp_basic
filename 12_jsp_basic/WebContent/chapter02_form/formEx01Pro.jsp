<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 전송 기초</title>
</head>
<body>

	<%--
	
		- 폼 전송을 통해서 넘어 오는 데이터는 request객체를 통해서 전달을 받는다.
		- 페이지의 encoding설정 외에 request객체의 encoding을 setCharacterEncoding메서드를 이용하여 추가로 지정해 주어야한다.
		- request.getParameter(); 메소드를 통해서 from을 통해 넘어온 데이터의 name속성 값을 가져온다.
		- request.getParameter(); 의 기본 반환타입은 문자열이다.
		- request.getParameterValues(); 메소드를 통해서 배열의 값을 처리 할 수 있다.
	 
	 --%>

	<% 
	
		request.setCharacterEncoding("utf-8");
	
		String likeLanguage = request.getParameter("likeLanguage");
		String reason       = request.getParameter("reason");
		
		int count           = Integer.parseInt(request.getParameter("count"));
	
		count += 1;
		
		System.out.println("likeLanguage : " + likeLanguage);
		System.out.println("reason : " + reason);
		System.out.println("count : " + count);
		System.out.println();
		
	%>

	<p>좋아하는 언어 : <%=likeLanguage %></p>
	<p>좋아하는 이유 : <%=reason %></p>
	<p>개발가능한 언어의 개수 : <%=count %></p>

</body>
</html>