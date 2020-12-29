package com.ganesh;

public class LogService {	
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
