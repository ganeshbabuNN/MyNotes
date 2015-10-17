package com.ganesh.spring.cxf;

import javax.jws.WebService;

@WebService(endpointInterface="com.ganesh.spring.cxf.HelloService")
public class HelloServiceBean implements HelloService {
	public String getMessage(String name) {
		System.out.println("in getMessage()");
		String msg ="Hello" + name + "Welcome to Spring-CXF World";
		System.out.println(msg);
		return msg;
	}
	
	
}
