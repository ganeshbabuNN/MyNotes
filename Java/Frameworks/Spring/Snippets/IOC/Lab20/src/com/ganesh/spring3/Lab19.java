package com.ganesh.spring3;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class Lab19 {
	public static void main(String[] args) {
		
		//ApplicationContext ctx = new ClassPathXmlApplicationContext("ganesh.xml");
		
		AbstractApplicationContext ctx1= new FileSystemXmlApplicationContext("C:/Ganesh/Training Notes/LabsWorks/AC-B13/Spring/IOC/Lab20/src/ganesh.xml");
		
		System.out.println("Spring Container is Ready");
		System.out.println("-----");
		//Hello hello =(Hello)ctx.getBean("hello");
		Hello hello =(Hello)ctx1.getBean("hello");
		hello.show();
		System.out.println("----------");
		ctx1.registerShutdownHook();
		System.out.println("Spring Container going to shutdown...");
		
		}
}
