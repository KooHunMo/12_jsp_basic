package _08_servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Join")						// 클라이언트가 jsp페이지가 아닌 해당 url경로로 웹시스템에 request한다.
public class Join extends HttpServlet {		// Http 통신이 가능한 HttpServlet클래스를 상속받아 구현한다.
	
	private static final long serialVersionUID = 1L; // Servlet생성시 기본값으로 생성된다. 서블릿의 내부 식별자 역할을 한다.

	// get형식으로 url요청이 들어왔을 때 수행할 메서드
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//request.setCharacterEncoding(env);
		//request.getParameter(name);
		
		// 아래의 dispatcher에 명시된 jsp파일로 포워딩 한다.
		RequestDispatcher dis = request.getRequestDispatcher("chapter08_servlet/01_join.jsp"); //WebContent하위 경로부터 기술한다.
		dis.forward(request, response);
		
	}
	
	// post형식으로 url요청이 들어왔을 때 수행할 메서드
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
