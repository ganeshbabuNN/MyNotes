package com.ganesh.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.*;
import org.apache.struts.actions.*;
import org.apache.struts.validator.*;


import org.springframework.beans.factory.annotation.*;


import com.ganesh.spring.service.ContactService;
import com.ganesh.spring.to.ContactTO;

public class ContactAction extends MappingDispatchAction{
	
	@Autowired
	ContactService cs = null;
	
	public ActionForward addContact(ActionMapping mapping,ActionForm form, HttpServletRequest request, HttpServletResponse response){
		System.out.println("ContactAction-addContact()");
		DynaValidatorForm dvf=(DynaValidatorForm)form;
		String fn=dvf.getString("fname");
		String ln=dvf.getString("lname");
		String em=dvf.getString("email");
		String ph=dvf.getString("phone");
		ContactTO cto = new ContactTO();
		cto.setFname(fn);
		cto.setLname(ln);
		cto.setEmail(em);
		cto.setPhone(Long.parseLong(ph));
		int id=cs.addContact(cto);
		cto.setCid(id);
		request.setAttribute("CTO", cto);
		return mapping.findForward("success");
	}
	
	public ActionForward editContact(ActionMapping mapping,ActionForm form, HttpServletRequest request, HttpServletResponse response){
		System.out.println("ContactAction-editContact()");
		HttpSession session= request.getSession();
		session.setAttribute("EDIT", "TRUE");
		return mapping.findForward("success");
	}
	
	public ActionForward searchContact(ActionMapping mapping,ActionForm form, HttpServletRequest request, HttpServletResponse response){
		System.out.println("ContactAction-searchContact()");
		DynaValidatorForm dvf=(DynaValidatorForm)form;
		String em=dvf.getString("email");
		ContactTO cto= null;
		cto=cs.getContactByEmail(em);
		if(cto==null){
			request.setAttribute("NOT_FOUND", "No record found");
			return mapping.findForward("failed");
		}else {
			HttpSession session = request.getSession();
			session.setAttribute("CTO", cto);
			session.setAttribute("EDIT","FALSE");
		}		
		return mapping.findForward("success");
	}
	
	public ActionForward updateContact(ActionMapping mapping,ActionForm form, HttpServletRequest request, HttpServletResponse response){
		System.out.println("ContactAction-updateContact()");
		HttpSession session= request.getSession();
		session.setAttribute("EDIT", "FALSE");
		DynaValidatorForm dvf=(DynaValidatorForm)form;
		String cid=dvf.getString("cid");
		String fn=dvf.getString("fname");
		String ln=dvf.getString("lname");
		String em=dvf.getString("email");
		String ph=dvf.getString("phone");
		ContactTO cto = new ContactTO();
		int id=Integer.parseInt(cid);
		cto.setCid(id);
		cto.setFname(fn);
		cto.setLname(ln);
		cto.setEmail(em);
		cto.setPhone(Long.parseLong(ph));
		cs.updateContact(cto);		
		return mapping.findForward("success");
	}
	

}
