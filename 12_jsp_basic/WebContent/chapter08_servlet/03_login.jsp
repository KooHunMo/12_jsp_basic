<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
	<div align="center">
		<h2>로그인 폼</h2>
		<form action="LoginAction" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>패스워드</td>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="login"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>