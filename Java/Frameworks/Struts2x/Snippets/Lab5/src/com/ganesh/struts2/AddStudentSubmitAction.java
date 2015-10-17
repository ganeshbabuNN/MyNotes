package com.ganesh.struts2;

import com.opensymphony.xwork2.ActionSupport;

public class AddStudentSubmitAction extends ActionSupport {
	private String sname;
	private String email;
	private String phone;
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
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
		/*	if(sname == null || sname.length()==0){
			addActionError("Student Name is Required");
		}
		if(email == null || email.length()==0){
			addActionError("email is Required");
		}
		if(phone == null || phone.length()==0){
			addActionError("phone is Required");
		}
	}
	*/
	if(sname == null || sname.length()==0){
		addFieldError("sname",getText("errors.sname.required"));
	}
	if(email == null || email.length()==0){
		addFieldError("email",getText("errors.email.required"));
	}
	if(phone == null || phone.length()==0){
		addFieldError("phone",getText("errors.phone.required"));
	}
  }
	public String execute() throws Exception {
	 System.out.println("AddStudentSubmitAction-execute()");
	 System.out.println(sname);
	 System.out.println(email);
	 System.out.println(phone);
	return "success";
      }
}

