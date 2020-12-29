package com.ganesh.struts2;

public class HelloAction {
	public String execute() throws Exception {
		System.out.println("HelloAction-execute()");
	return "hello";
  }
}
