package com.ganesh;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class loginservlet  extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		//1.collecting the data
		String unm= req.getParameter("uname");
		String pwd =req.getParameter("pword");
		String msg ="";
		//2.Verifying or processing the data
		if(unm.equals(pwd))
		{
			msg="<h1> login sucessfull <br/> Welcome to ganesh Home page";
		}else {
			msg="<h1> login failed <br/> Invalid username or password";
		}
		//3.forward to JSP
		req.setAttribute("UN", unm);
		req.setAttribute("PW", pwd);
		req.setAttribute("MSG", msg);
		req.getRequestDispatcher("show.jsp").forward(req, res);
	}

}
