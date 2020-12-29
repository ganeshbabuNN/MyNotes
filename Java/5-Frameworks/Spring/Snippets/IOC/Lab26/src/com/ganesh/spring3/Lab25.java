package com.ganesh.spring3;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Lab25 {
	public static void main(String[] args) {
		ApplicationContext ctx= new ClassPathXmlApplicationContext("ganesh.xml");
		Hello h=(Hello)ctx.getBean("hello");
		h.show();
	}
}
