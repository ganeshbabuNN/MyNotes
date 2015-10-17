package com.ganesh.spring3;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class Lab22 {
	public static void main(String[] args) {
		
		ApplicationContext ctx = new ClassPathXmlApplicationContext("ganesh.xml");
		System.out.println("Spring Container is Ready");
		System.out.println("-----");
		TestBean tb=(TestBean)ctx.getBean("testBean");
		tb.showEnglish();
		tb.showHindi();
		}
}
