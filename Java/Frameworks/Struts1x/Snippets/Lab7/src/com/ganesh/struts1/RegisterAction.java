package com.ganesh.struts1;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionError;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class RegisterAction extends Action{	
	@Override
	public ActionForward execute(ActionMapping am, ActionForm af,
			HttpServletRequest req, HttpServletResponse res)
			throws Exception {
			String result = "home";
			
			//1.collect the data
			RegisterForm rf =(RegisterForm)af;
			System.out.println(rf.getSname());
			System.out.println(rf.getEmail());
			System.out.println(rf.getDob());
			System.out.println(rf.getDor());
			//2. store in DB
			//3.create the return Actionforward
		return am.findForward(result);
	}
}
