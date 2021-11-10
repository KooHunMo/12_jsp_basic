<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 전송 기초</title>
</head>
<body>

	<h2>form 전송 데이터</h2>
	<form action="formEx02Pro.jsp" method="post">
		1. 텍스트 : <input type="text" name="data1"><hr>
		2. 패스워드 : <input type="password" name="data2"><hr>
		3. 셀렉트 : <select name="data3">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
					</select><hr>
		4. 라디오 : <input type="radio" name="data4" value="1"> 1 &emsp;
					<input type="radio" name="data4" value="2"> 2 &emsp;
					<input type="radio" name="data4" value="3"> 3 &emsp; <hr>
		5. 텍스트 에어리어 : <textarea rows="5" cols="30" name="data5"></textarea> <hr>
		6. 히든 : <input type="hidden" value="브라우저에는 보이지 않습니다." name="data6"> <hr>
		7. 이메일 : <input type="email" name="data7"><hr>
		8. 날짜 : <input type="date" name="data8"><hr>
		9. 숫자 : <input type="number" name="data9"><hr>
		10. 체크박스 : 	<input type="checkbox" name="data10" value="1"> 1 &emsp;
					    <input type="checkbox" name="data10" value="2"> 2 &emsp;
					    <input type="checkbox" name="data10" value="3"> 3 &emsp; <hr>
			
		<input type="submit" value="전송">
	</form>

</body>
</html>