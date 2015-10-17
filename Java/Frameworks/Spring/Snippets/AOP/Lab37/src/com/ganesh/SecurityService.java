package com.ganesh;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class SecurityService {
	
	@Pointcut(value = "execution(* com.ganesh.AccountService.my*(..))")
	public void jlc1() {
		System.out.println("@Pointcut AccountService SS- VerifyUser");
	}
	
	@Pointcut(value = "execution(* com.ganesh.CustomerServiceImpl.up*(..))")
	public void jlc2() {
		System.out.println("@PointcutCustomerServiceImpl  SS-jlc2()");
	}
	
	@Around("jlc1() or jlc2()")
	public void verifyUser(ProceedingJoinPoint pjp) throws Throwable {
		System.out.println("verifyUser Begin");
		pjp.proceed();
		System.out.println("verifyUser End..");
		System.out.println("LogService... log()... end");
	}

	@Before("jlc1() or jlc2()")
	public void verifyUser() {
		System.out.println("@Before SS-verifyUser()");
	}
	
}
