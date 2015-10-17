package com.ganesh.spring3;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Lab30 {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext ctx= new AnnotationConfigApplicationContext(HelloConfig.class);
		System.out.println("Now Spring Container is Ready");
		Hello hello=(Hello)ctx.getBean(Hello.class);
		hello.show();
		Hai hai=(Hai)ctx.getBean(Hai.class);
		hai.show();
	}
}
