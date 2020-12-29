package com.ganesh.ejb3;

import javax.ejb.Stateless;
import javax.jws.WebService;

@WebService
@Stateless(name="HelloBean",mappedName="HelloBean")
public class HelloBean implements HelloRemote {
	public String getMessage(String name) {
		String msg="Hello"+name+"Welcome to EJB3 WebServices.. using JAX-WS Metro";
		System.out.println(msg);
		return msg;
	}
}
