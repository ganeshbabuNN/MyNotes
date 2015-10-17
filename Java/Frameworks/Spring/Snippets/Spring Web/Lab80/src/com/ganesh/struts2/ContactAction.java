package com.ganesh.struts2;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import org.springframework.beans.factory.annotation.*;


import com.ganesh.spring.service.ContactService;
import com.ganesh.spring.to.ContactTO;
import com.opensymphony.xwork2.ActionSupport;

public class ContactAction extends ActionSupport{

	@Autowired
	ContactService cs = null;
	
	private int cid;
	private String fname;
	private String lname;
	private String email;
	private String phone;
	
	
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
	
	public void validate() {
		HttpServletRequest req = ServletActionContext.getRequest();
		String uri=req.getRequestURI();
		System.out.println(uri);
		if (uri.endsWith("addContactSubmit.jlc") || uri.endsWith("updateContactSubmit.jlc")) {
			if(fname== null ||fname.isEmpty()){
				addFieldError("fname", "First Name is Required");
			}
			if(lname== null ||lname.isEmpty()){
				addFieldError("lname", "Last Name is Required");
			}
			if(email== null ||email.isEmpty()){
				addFieldError("email", "Email is Required");
			}
			if(phone== null ||phone.isEmpty()){
				addFieldError("phone", "Phone is Required");
			}
		}else if(uri.endsWith("searchContactSubmit.jlc")){
			if(email==null || email.isEmpty()){
				addFieldError("email", "Email is required");
			}			
		}
	}
	
	public String addContact(){
		System.out.println("ContactAction-addContact()");
		ContactTO cto = new ContactTO();
		cto.setFname(fname);
		cto.setLname(lname);
		cto.setEmail(email);
		cto.setPhone(Long.parseLong(phone));
		int id=cs.addContact(cto);
		cto.setCid(id);
		HttpServletRequest request= ServletActionContext.getRequest();
		request.setAttribute("CTO", cto);
		return SUCCESS;
	}
	
	public String editContact(){
		System.out.println("ContactAction-editContact()");
		HttpSession session= ServletActionContext.getRequest().getSession();
		session.setAttribute("EDIT", "TRUE");
		ContactTO cto =(ContactTO)session.getAttribute("CTO");
		cid=cto.getCid();
		fname=cto.getFname();
		lname=cto.getLname();
		email=cto.getEmail();
		phone=cto.getPhone()+"";
		return SUCCESS;
	}
	
	public String searchContact(){
		System.out.println("ContactAction-searchContact()");
		ContactTO cto= cs.getContactByEmail(email);
		if(cto!=null){
			HttpSession session = ServletActionContext.getRequest().getSession();
			session.setAttribute("CTO", cto);
			session.setAttribute("EDIT", "FALSE");
			return SUCCESS;
		}else {
			HttpServletRequest req= ServletActionContext.getRequest();
			req.setAttribute("NOT_FOUND", "No record Found");
			return INPUT;
		}		
	}
	
	public String updateContact(){
		System.out.println("ContactAction-updateContact()");
		ContactTO cto = new ContactTO();
		cto.setFname(fname);
		cto.setLname(lname);
		cto.setEmail(email);
		cto.setPhone(Long.parseLong(phone));
		cto.setCid(cid);
		cs.updateContact(cto);		
		return SUCCESS;
	}
	

}
