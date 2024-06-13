package com.bookstore.controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bookstore.mvc.MemberDAO;
import com.bookstore.mvc.MemberDTO;

@WebServlet("/login.do")
public class LoginController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("password");

		MemberDAO mDao = new MemberDAO();		
		MemberDTO member = mDao.loginCheck(id, pw);

	    if(member != null){
	    	request.setAttribute("loginResult", true);
			HttpSession session = request.getSession();
			session.setAttribute("member", member);
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);

		}else{
		      response.sendRedirect("loginError.jsp");
		}
		   

		  
	}


	
}


