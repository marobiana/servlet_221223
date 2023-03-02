package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet {
	// 클론 후 주석 추가
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/json");
		response.setCharacterEncoding("utf-8");
		
		// 쿼리스트링에 들어있는 파라미터 꺼내기
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		
		// age가 없으면 null이다.
		int age = Integer.parseInt(request.getParameter("age"));
		
		PrintWriter out = response.getWriter();
//		out.println("응답");
//		out.println("user_id:" + userId);
//		out.println("name:" + name);
//		out.println("age:" + age);
		
		// "{"키":"값", "키1":"값2"}" => JSON String
		// {"user_id":"marobiana", "name":"신보람", "age":30}
		out.print("{\"user_id\":\"" + userId + "\", "
				+ "\"name\":\"" + name + "\", "
				+ "\"age\":" + age + "}");
	}
}







