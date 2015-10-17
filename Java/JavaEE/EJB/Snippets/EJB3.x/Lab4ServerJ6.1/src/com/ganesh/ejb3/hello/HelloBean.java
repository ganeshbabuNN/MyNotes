package com.ganesh.ejb3.hello;

import javax.ejb.Stateless;

@Stateless //(name="HelloBean", mappedName ="HelloBean")
public class HelloBean implements HelloRemote{
	
	    public HelloBean() {
			// TODO Auto-generated constructor stub
		}
		public String getMessage(String name) {
		String msg = "Hello" + name + "! Welcome to EJB3 World";
		System.out.println(msg);
		return msg;
	}
	

}
