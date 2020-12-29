package com.ganesh.struts2;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction  extends ActionSupport{
	private String username;
	private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String execute() throws Exception {
		if(username.equals(password)){
			return "success";		
		}else {
			this.addActionError("login.invalid");
			return "error";
		}
	}
	@Override
	public void validate() {
	System.out.println("validate()");
	if((username== null) || (username.length() == 0)){
		this.addFieldError("username", getText("login.username.required"));
	}
	if((password== null) || (password.length() == 0)){
		this.addFieldError("password", getText("login.password.required"));
	}
		super.validate();
	}
}
