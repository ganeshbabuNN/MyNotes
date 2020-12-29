package com.ganesh;

import org.aspectj.lang.ProceedingJoinPoint;

public class LogService {
	public void log(ProceedingJoinPoint pjp) throws Throwable{
		System.out.println("LogService--log()---begin");
		logBefore();
		pjp.proceed();
		logReturning();
		System.out.println("LogService--log()---end");	
	}
	
	public void logBefore() {
		System.out.println("@Before LS- LogBefore");
	}
	public void logReturning(){
		System.out.println("@AfterReturning LS -logReturning()");
	}
	public void logThrowing() {
		System.out.println("@AfterThrowing LS-logThrowing() ");
	}
	public void logOk() {
		System.out.println("@After-LS......logOk()"); }
	}
