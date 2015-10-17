package com.ganesh.struts2;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class HelloAction extends ActionSupport{
	private String userId;
	private String emailId;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	
	public String test() throws Exception{
		System.out.println(userId);
		System.out.println(emailId);
		ActionContext ac = ActionContext.getContext();
		Map sessionMap=ac.getSession();
		System.out.println(sessionMap.get("Greeting"));
		System.out.println(sessionMap.get("JLCMSG"));
	return "success";
				
	}
	

}
