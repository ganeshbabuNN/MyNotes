package com.ganesh.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginAction {
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
		String page = "login.jsp";
		boolean validate = true;
		
		//1.collect the request data
		String un = request.getParameter("username");
		String pw = request.getParameter("password");
		
		//2. Validate input data
		if(un == null || un.trim().isEmpty()) {
			request.setAttribute("UN_ERR", "username is mandatory");
			validate = false;
		}
		if(pw == null || pw.trim().isEmpty()) {
			request.setAttribute("PW_ERR", "password is mandatory");
			validate = false;
		}
		
		// 3 INTRACT with model
		if(validate) {
			boolean valid = un.equals(pw);
			if(valid){
				page = "home.jsp";
				request.setAttribute("UN",un);
			}else
				request.setAttribute("EMSG", "Invalid username or password");
		}
	return page;
	}
}
