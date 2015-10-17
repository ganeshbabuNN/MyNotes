package com.ganesh.axis2;

public class HelloService {

	public String getMessage(String name) {
		String msg="Hello "+ name+" Welcome to WebServices World..using Apache Axis2";
		System.out.println(msg);
		return msg;
	}

}
