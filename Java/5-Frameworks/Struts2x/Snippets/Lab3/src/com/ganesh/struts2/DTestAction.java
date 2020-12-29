package com.ganesh.struts2;

import com.opensymphony.xwork2.ActionSupport;

public class DTestAction extends ActionSupport{
	public String test1() throws Exception{
		System.out.println("TestAction-test1()");
		return "dtest";
	}
	
	public String test2() throws Exception{
		System.out.println("TestAction-test2()");
		return "dtest";
	}

}
