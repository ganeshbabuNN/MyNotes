package com.ganesh.jsf2;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean(name="userBean")
@SessionScoped
public class UserBean {
	private String username="srinivas";
	private String password;
	private String errMsg;
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
	public String getErrMsg() {
		return errMsg;
	}
	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}
	
	public String verifyUser(){
		String result = null;
		if(username.equals(password)){
			result ="home";
		}else {
			result ="login";
			errMsg="Invalid Username or Password";
		}
		return result;
	}
	
	public String gotoLogin(){ 
		errMsg ="";
		username="Ganesh";
		return "login";
	}
	

}
