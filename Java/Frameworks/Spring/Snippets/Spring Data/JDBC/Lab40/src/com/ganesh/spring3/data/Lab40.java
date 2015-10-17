package com.ganesh.spring3.data;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Lab40 {
	public static void main(String[] args) {
		ApplicationContext ctx= new ClassPathXmlApplicationContext("spring-config.xml");
		TestService ts=(TestService)ctx.getBean("ts");
		ts.showOracleInfo();
		ts.showMySQLInfo();
	}

}
