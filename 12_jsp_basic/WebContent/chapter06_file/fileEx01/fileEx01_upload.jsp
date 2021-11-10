<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>file upload</title>
</head>
<body>
	
	<% 
	
		/*
	    
			# 파일 업로드를 수행하는 MultipartRequest 객체 생성 ( 핵심 역할 )
			
			[ 생성자의 인수 설명 ]
					
		    - 첫번째 인자는 폼에서 가져온 인자 값을 얻기 위해 request객체를 전달한다. 
			- 두번째 인자는 업로드 될 파일의 위치를 입력한다.
		    - 세번째 인자는 업로드한 모든 파일의 용량의 합의 최대치를 의미하며 최대 크기를 넘는경우 Exception이 발생한다.
		    - 네번째 인자는 한글 이름이 넘어올 경우 한글에 문제되지 않도록 인코딩을 지정한다.
			- 다섯번째 인자는 똑같은 파일을 업로드 할 경우 중복되지 않도록 파일이름을 변환해 주는 기능을 갖는다.
	
		 */
		 
		request.setCharacterEncoding("utf-8");
		 
		String location = "D:\\ABU\\19_web_shared_folder\\workspace\\12_jsp_basic\\WebContent\\chapter06_file\\file_repo";
	 
		// MultipartRequest 이 코드가 실제로 파일 업로드를 담당하는 부분이다.
		MultipartRequest multi = new MultipartRequest(request,
													 location,
													 1024 * 1024 * 5,
													 "utf-8",
													 new DefaultFileRenamePolicy());
							
	
		// multipart/form-data형식으로 전송 되었기 때문에 request.getParameter가 불가능하고
		// MultipartRequest 객체의 getParamter메서드를 사용해야 한다.
		String userName = multi.getParameter("userName");
		
		Enumeration<?> files = multi.getFileNames(); // <input type="file">인 모든 파라메타를 반환
		
		String element          = "";
		String filesystemName   = "";
		String originalFileName = "";	
		String contentType      = "";
		long length             = 0;
		
		while (files.hasMoreElements()) { 								// 다음 정보가 있으면
			
			element          = (String)files.nextElement();			// file을 반환
			filesystemName   = multi.getFilesystemName(element);	// 서버에 업로드된 파일명을 반환
			originalFileName = multi.getOriginalFileName(element);  // 사용자가 업로드한 파일명을 반환
			contentType      = multi.getContentType(element);		// 업로드된 파일의 타입을 반환
			length           = multi.getFile(element).length();     // 파일의 크기를 반환
			
		}
				
	%>
	<fieldset>
		<legend>파일 정보 확인</legend>
		<p>작성자 이름 :               <%=userName %></p>
		<p>파라메타 이름 :             <%=element %></p>
		<p>서버에 업로드된 파일 이름 : <%=filesystemName %></p>
		<p>원본 파일 이름 :            <%=originalFileName %></p>
		<p>파일 타입 :                 <%=contentType %></p>
		<p>파일 크기 :                 <%=length %></p>
	</fieldset>

</body>
</html>