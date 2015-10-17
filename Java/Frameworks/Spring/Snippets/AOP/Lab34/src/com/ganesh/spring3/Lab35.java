package com.ganesh.spring3;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Lab35 {
	public static void main(String[] args) {
		ApplicationContext ctx= new ClassPathXmlApplicationContext("ganesh.xml");
		CustomerService cst=(CustomerService)ctx.getBean("cs");
		cst.addCustomer();
		cst.updateCustomer();
		AccountService ast=(AccountService)ctx.getBean("as");
		ast.myDeposit();
		ast.getBal();
		try{
			ast.myWithdraw();
		}catch(Exception e){
			System.out.println("Sorry----");
		}
	}

}
