package com.ganesh.spring3;

import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Lab25 {
	public static void main(String[] args) {
		ConfigurableApplicationContext ctx= new ClassPathXmlApplicationContext("ganesh.xml");
		ctx.start();
		GBManager gb=(GBManager)ctx.getBean("gb");
		Batch b= new Batch("B-24", "28-Apr-2010", "6.30-8.30", 150);
		gb.adBatch(b);
		Workshop ws=new Workshop("WebServices", 5000, 99);
		gb.addWorkshop(ws);
		ctx.stop();
		ctx.close();
	}

}
