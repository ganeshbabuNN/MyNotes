package com.ganesh.ejb3.hello;

import javax.ejb.Stateless;

@Stateless(name="HelloBean",mappedName="HelloBean")
public class HelloBean implements HelloRemote {
	public String getMessage(String name) {
		String msg = "Hello" + name + "!Welcome to EJB3 world";
		System.out.println(msg);
		return msg;
	}
}
