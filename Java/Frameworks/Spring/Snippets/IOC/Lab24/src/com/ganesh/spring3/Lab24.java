package com.ganesh.spring3;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Lab24 {
	public static void main(String[] args) {
	ApplicationContext ctx = new ClassPathXmlApplicationContext("ganesh.xml");
	System.out.println("Spring Container is Ready");
	System.out.println("-----");
	Student stu=(Student)ctx.getBean("student");
	System.out.println(stu.getSid().getBid());
	System.out.println(stu.getSid().getSid());
	System.out.println(stu.getSname());
	System.out.println(stu.getPhone());
	System.out.println(stu.getFee().getFeeBal());
	System.out.println(stu.getFee().getFeepaid());
	System.out.println(stu.getEmails());
	System.out.println(stu.getPhone());
	}
}
