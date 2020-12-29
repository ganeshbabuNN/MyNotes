package com.ganesh.struts1;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class RegisterAction extends Action{	
	@Override
	public ActionForward execute(ActionMapping am, ActionForm af,
			HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		
			//1.collect the data
		    RegisterForm rf =(RegisterForm)af;
		    System.out.println(rf.getSid());
			System.out.println(rf.getAge());
			System.out.println(rf.getFeebal());
			System.out.println(rf.getFeepaid());
			
			//2. store in DB
			//3.create the return Actionforward
		return am.findForward("home");
	}
}
