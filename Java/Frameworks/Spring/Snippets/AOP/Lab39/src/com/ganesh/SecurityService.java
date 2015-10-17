package com.ganesh;

import org.aspectj.lang.ProceedingJoinPoint;

public class SecurityService {

	public void verifyUser(ProceedingJoinPoint pjp) throws Throwable {
		System.out.println("verifyUser-begin");
		pjp.proceed();
		System.out.println("verifyUser-End");
	}
	
}
