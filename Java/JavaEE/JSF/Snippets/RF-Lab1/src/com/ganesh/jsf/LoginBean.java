package com.ganesh.jsf;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;

public class LoginBean {
	private String userName;
	private String password;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String verifyUserAccount(){
		String str = new String("failure");
		if(userName.equals(password)){
			str= new String("success");
		}else{
			FacesContext fc = FacesContext.getCurrentInstance();
			fc.addMessage("loginError", new FacesMessage("UserName or Password Incorrect"));
		}
		return str;
	}
	
	public String logoutAction(){
		FacesContext context = FacesContext.getCurrentInstance();
		HttpSession session = (HttpSession)context.getExternalContext().getSession(true);
		if(session!=null)
			session.invalidate();
			return "success";
	}

}
