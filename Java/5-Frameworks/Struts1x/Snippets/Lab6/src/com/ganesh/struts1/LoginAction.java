package com.ganesh.struts1;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionError;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class LoginAction extends Action{
	@Override
	public ActionForward execute(ActionMapping am, ActionForm af,
			HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		String result ="";
		//1.collect the date
		LoginForm lf =(LoginForm)af;
		String un = lf.getUsername();
		String pw = lf.getPassword();
		
		//2. process the request		
		if(un.equals(pw)){
			result = "success";
			req.setAttribute("UN", un);
		}else {
			result ="failed";
			ActionErrors errors = new ActionErrors();
			errors.add("login.invalid", new ActionError("error.login.invalid"));
			this.saveErrors(req, errors);
		}
		//3 Prepare the ActionForward
		return am.findForward(result);
	}

}
