package com.ganesh.jaxws;

public class Hello {
	public String getMessage(String name){
		String msg="Hello "+ name+" Welcome to WebServices World..using JAX-WS Metro";
		System.out.println(msg);
		return msg;
	}
}
