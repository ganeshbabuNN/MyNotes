package com.ganesh.spring3;
import org.springframework.context.*;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Lab2 {
	public static void main(String[] args) {
		/*
		//Without IOC
		A aobj= new A();
		aobj.setA(99);
		aobj.setMsg("Hello Guys");
		B bobj= new B(88, "Hai Guys");
		Hello hello = new Hello(bobj);
		hello.setAobj(aobj);
		hello.show();
		*/	
		
		ApplicationContext ctx = new ClassPathXmlApplicationContext("ganesh.xml");
		System.out.println("Spring Container is Ready");
		System.out.println("-----");
		Customer cust=(Customer)ctx.getBean("cust");
		cust.show();
		
	}
}
