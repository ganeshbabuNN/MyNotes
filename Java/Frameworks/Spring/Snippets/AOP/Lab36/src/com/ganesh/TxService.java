package com.ganesh;

import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class TxService {
	
	@Pointcut(value="execution(* com.ganesh.AccountService.my*(..))")
	 public void jlc1() {
		 System.out.println("@Pointcut TX- jlc1()");
	 }	 
	@Pointcut(value="execution(* com.ganesh.CustomerServiceImpl.up*(..))")
	 public void jlc2() {
		 System.out.println("@Pointcut TX- jlc2()");
	 }
	
	@Before("jlc1() or jlc2()")
	public void begin() {
		System.out.println("@Before TX -begin()");
	}
	
	@AfterReturning("jlc1() or jlc2()")
	public void commit(){
		System.out.println("@AfterReturning TX -commit()");
	}	
	
	@AfterThrowing("jlc1() or jlc2()")
		public void rollback() {
		System.out.println("@AfterThrowing TX- rollback()");
	}
}
