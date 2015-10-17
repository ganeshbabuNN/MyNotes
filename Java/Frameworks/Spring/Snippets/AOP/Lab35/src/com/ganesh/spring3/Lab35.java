package com.ganesh.spring3;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Lab35 {
	public static void main(String[] args) {
		ApplicationContext ctx= new ClassPathXmlApplicationContext("ganesh.xml");
		System.out.println("---Using Target Object---------------");
		CustomerService cst=(CustomerService)ctx.getBean("csTarget");
		cst.addCustomer();
		cst.updateCustomer();
		AccountService ast=(AccountService)ctx.getBean("asTarget");
		ast.myDeposit();
		ast.getBal();
		try{
			ast.myWithdraw();
		}catch(Exception e){
			System.out.println("Sorry----");
		}
		System.out.println("-----------------");
		System.out.println("---Using Proxy Object------------");
		CustomerService csp=(CustomerService)ctx.getBean("csProxy");
		csp.addCustomer();
		csp.updateCustomer();
		AccountService asp=(AccountService)ctx.getBean("asProxy");
		asp.myDeposit();
		asp.getBal();
		try{
			asp.myWithdraw();
		}catch(Exception e){
			System.out.println("Sorry----");
		}
	}

}
