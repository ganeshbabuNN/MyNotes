package com.ganesh.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class JLCControllerServlet extends HttpServlet {
	
	LoginAction loginAction = null;
	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		loginAction = new LoginAction();
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//1.collect the incoming URI
		String uri = request.getRequestURI();
		String page = "";
		
		//2.invoke appropriate action
		if(uri.endsWith("LoginSubmit.jlc")){
			page = loginAction.execute(request, response);
		}
		
		//3.forward to the resultant page
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
		}
}
