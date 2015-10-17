package com.ganesh.struts2;

import org.apache.struts2.config.Result;

import com.opensymphony.xwork2.ActionSupport;

@Result(name="success",value="/login.jsp")
public class AnnotatedLoginDisplay extends ActionSupport{
	@Override
	public String execute() throws Exception {
		return "success";		 
	}
}
