package com.ganesh.spring.jdbc;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class Lab55 {
	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("spring-config.xml");
		AccountDAO adao= (AccountDAO)ctx.getBean("adao");
		System.out.println(adao.getBalance(101));
		System.out.println(adao.getBalance(102));
		
		//1.deposit()
		System.out.println("********* deposit **********");
		adao.deposit(101, 2000.0);
		
		//2.withdrawal()
		System.out.println("********* withdrawal **********");
		adao.withdrawal(102, 5000.0);
		
		//3.getBalance()
		System.out.println("********* getBalance **********");
		System.out.println(adao.getBalance(101));
		System.out.println(adao.getBalance(102));
		//4.fundsTransfer()
		System.out.println("*********  Funds Transfer **********");
		System.out.println(adao.getBalance(103));
		System.out.println(adao.getBalance(101));
		
		adao.fundsTransafer(103, 101, 30000.0);
		System.out.println("Balance of 103 "+adao.getBalance(103));
		System.out.println("Balance of 101 "+ adao.getBalance(101));
	}

}
