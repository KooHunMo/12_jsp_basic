<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinAction</title>
</head>
<body>
	
	<div align="center">
		<h2>가입 정보</h2>
		<table border="1">
			<tr>
				<td>아이디</td>
				<td>${id}</td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td>${pw }</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>${name }</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td>${email }</td>
			</tr>
			<tr>
				<td>취미</td>
				<td>${hobby }</td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="로그인" onclick="location.href='Login'"></td>
			</tr>
		</table>
	</div>
	
</body>
</html>