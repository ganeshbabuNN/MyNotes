package com.ganesh.jsf;

import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.faces.view.facelets.FaceletContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.*;


import com.ganesh.spring.service.ContactService;
import com.ganesh.spring.to.ContactTO;

public class ContactBean{

	@Autowired
	ContactService cs = null;
	
	private int cid;
	private String fname;
	private String lname;
	private String email;
	private String phone;
	private boolean editable;
	
	
	public ContactService getCs() {
		return cs;
	}

	public void setCs(ContactService cs) {
		this.cs = cs;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public boolean isEditable() {
		return editable;
	}

	public void setEditable(boolean editable) {
		this.editable = editable;
	}

	
	public String addContact(){
		System.out.println("ContactBean-addContact()");
		ContactTO cto = new ContactTO();
		cto.setFname(fname);
		cto.setLname(lname);
		cto.setEmail(email);
		cto.setPhone(Long.parseLong(phone));
		int id=cs.addContact(cto);
		cto.setCid(id);
		email="";
		FacesContext fc=FacesContext.getCurrentInstance();
		ExternalContext ec=fc.getExternalContext();
		HttpServletRequest request= (HttpServletRequest)ec.getRequest();
		request.setAttribute("CTO", cto);
		return "success";
	}
	
	public void editContact(){
		System.out.println("ContactBean-editContact()");
		editable=true;
		FacesContext fc=FacesContext.getCurrentInstance();
		ExternalContext ec=fc.getExternalContext();
		HttpSession sess= (HttpSession)ec.getSession(false);
		ContactTO cto =(ContactTO)sess.getAttribute("CTO");
		cid=cto.getCid();
		fname=cto.getFname();
		lname=cto.getLname();
		email=cto.getEmail();
		phone=cto.getPhone()+"";
	}
	
	public String searchContact(){
		System.out.println("ContactBean-searchContact()");
		FacesContext fc=FacesContext.getCurrentInstance();
		ExternalContext ec=fc.getExternalContext();
		ContactTO cto= cs.getContactByEmail(email);
		if(cto!=null){
			HttpSession session = (HttpSession)ec.getSession(true);
			session.setAttribute("CTO", cto);
			editable=false;
			return "success";
		}else {
			HttpServletRequest req= (HttpServletRequest)ec.getRequest();
			req.setAttribute("NOT_FOUND", "No record Found");
			return "failed";
		}		
	}
	
	public String updateContact(){
		System.out.println("ContactBean-updateContact()");
		editable=false;
		ContactTO cto = new ContactTO();
		cto.setFname(fname);
		cto.setLname(lname);
		cto.setEmail(email);
		Long phn=Long.parseLong(phone);
		cto.setPhone(phn);
		cto.setCid(cid);
		cs.updateContact(cto);
		email="";
		return "success";
	}
	

}
