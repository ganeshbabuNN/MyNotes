package com.ganesh.struts1;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionError;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class LoginForm extends ActionForm{
	private String username ="ganesh";
	private String password;
	public LoginForm() {
	
	}
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
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		this.username = null;
		this.password = null;
	}
	
	@Override
	public ActionErrors validate(ActionMapping am,HttpServletRequest req) {
		ActionErrors errors = new ActionErrors();
		if(username == null|| username.length() == 0) {
			errors.add("username", new ActionError("errors.un.required"));
		}
		if(password == null || password.length()==0){
			errors.add("password", new ActionError("errors.ps.required"));
		}
		return errors;
	}

}
