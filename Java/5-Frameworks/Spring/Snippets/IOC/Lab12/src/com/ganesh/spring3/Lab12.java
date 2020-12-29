package com.ganesh.spring3;
import org.springframework.context.*;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Lab12 {
	public static void main(String[] args) {
		
		ApplicationContext ctx = new ClassPathXmlApplicationContext("ganesh.xml");
		System.out.println("Spring Container is Ready");
		System.out.println("-----");
		Hello hello =(Hello)ctx.getBean("hello");
		hello.show();
		}
}
