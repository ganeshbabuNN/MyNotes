package com.ganesh.struts2;


import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class HelloAction extends ActionSupport{
	String hellomsg;
	public HelloAction() {
		hellomsg = "Hello Guys, I am hello.jsp";
		System.out.println(hellomsg);
	}
	@Override
	public String execute() throws Exception {
		return "success";
	}
	public String getHellomsg() {
		return hellomsg;
	}
	public void setHellomsg(String hellomsg) {
		this.hellomsg = hellomsg;
	}
}