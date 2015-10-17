package com.ganesh.spring.cxf.client;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ganesh.spring.cxf.HelloService;

public class HelloClient {
	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("ganesh-client.xml");
		HelloService hello=(HelloService)ctx.getBean("helloService");
		System.out.println(hello.getMessage("Ganesh"));
	}

}
