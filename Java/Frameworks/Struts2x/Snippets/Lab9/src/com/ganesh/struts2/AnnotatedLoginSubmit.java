package com.ganesh.struts2;

import org.apache.struts2.config.Result;
import org.apache.struts2.config.Results;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.StringLengthFieldValidator;

@Results({
	@Result(name="input" ,value="/login.jsp"),
	@Result(name="success",value="/home.jsp"),
	@Result(name="failed",value="/login.jsp")
})
public class AnnotatedLoginSubmit extends ActionSupport {
	private String username;
	private String password;
	public String getUsername() {
		return username;
	}
	@RequiredStringValidator(message="jlc", key="error.un.required")
	@StringLengthFieldValidator(message="jlc",key="error.un.range",minLength="4",maxLength="8")
	public void setUsername(String username) {
		this.username = username;
	}
	
	@RequiredStringValidator(message="jlc", key="error.pw.required")
	@StringLengthFieldValidator(message="jlc",key="error.pw.range",minLength="3",maxLength="7")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String execute() throws Exception {
			System.out.println("execute()");
			String result = "";
			if(username.equals(password)){
				result = "success";
			}else{
				result ="failed";
				addActionError("Invalid Username or Password");
			}
		return result;
	}

}
