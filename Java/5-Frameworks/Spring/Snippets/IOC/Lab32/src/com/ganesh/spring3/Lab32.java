package com.ganesh.spring3;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Lab32 {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext ctx= new AnnotationConfigApplicationContext(GBConfig.class);
		System.out.println("Now Spring Container is Ready");
		Hello hello=(Hello)ctx.getBean("hello");
		hello.show();		
	}
}
