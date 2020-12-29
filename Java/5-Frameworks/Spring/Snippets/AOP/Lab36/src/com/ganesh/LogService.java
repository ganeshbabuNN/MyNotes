package com.ganesh;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class LogService {	
	@Pointcut(value="execution(* com.ganesh.AccountService.my*(..))")
	public void jlc1() {
		System.out.println("@Pointcut AccountService LS -jlc1()");
	}
	@Pointcut(value="execution(* com.ganesh.CustomerServiceImpl.up*(..))")
	public void jlc2() {
		System.out.println("@Pointcut CustomerService  LS-jlc2()");
	}	
	@Before("jlc1() or jlc2()")
	public void logBefore() {
		System.out.println("@Before LS- LogBefore");
	}
	
	@AfterReturning("jlc1() or jlc2()")
	public void logReturning(){
		System.out.println("@AfterReturning LS -logReturning()");
	}
	
	@AfterThrowing("jlc1() or jlc2()")
	public void logThrowing() {
		System.out.println("@AfterThrowing LS-logThrowing() ");
	}
	@After("jlc1() or jlc2()")
	public void logOk() {
		System.out.println("@After-LS......logOk()"); }
	}
