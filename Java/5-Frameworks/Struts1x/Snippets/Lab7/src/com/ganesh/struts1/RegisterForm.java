package com.ganesh.struts1;


import org.apache.struts.validator.ValidatorForm;

public class RegisterForm extends ValidatorForm{
	private String sname;
	private String email;
	private String dob;
	private String dor;
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
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getDor() {
		return dor;
	}
	public void setDor(String dor) {
		this.dor = dor;
	}
	
	
}
