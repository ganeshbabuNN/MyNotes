package com.ganesh.struts2;

import com.opensymphony.xwork2.ActionSupport;

public class HelloHaiAction extends ActionSupport{
	@Override
	public String execute() throws Exception {
		System.out.println("HelloHaiAction-execute()");
		return "hellohai";
	}

}
