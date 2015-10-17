package com.ganesh.jaxws.client;

import com.ganesh.jaxws.*;

public class HelloClient {
	public static void main(String[] args) {
		HelloService hs = new HelloService();
		HelloDelegate hello = hs.getHelloPort();
		String msg = hello.getMessage("Ganesh\n");
		System.out.println(msg);
		msg=hello.getMessage("Babu\n");
		System.out.println(msg);
	}
}
