package com.ganesh.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.MappingDispatchAction;

public class AccountAction extends MappingDispatchAction { 
	public ActionForward showAccount(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response) throws Exception{
		String page = "success";
		HttpSession sess = request.getSession();
		UserTO uto=(UserTO)
	}

}
