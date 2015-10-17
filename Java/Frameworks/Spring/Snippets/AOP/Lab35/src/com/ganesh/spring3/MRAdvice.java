package com.ganesh.spring3;

import java.lang.reflect.Method;

import org.springframework.aop.AfterReturningAdvice;
import org.springframework.beans.factory.annotation.Autowired;

public class MRAdvice implements AfterReturningAdvice{
	@Autowired
	LogService ls=null;
	
	@Autowired
	TxService ts=null;
	public void afterReturning(Object rv, Method method, Object[] arg,
			Object target) throws Throwable {
		ts.commit();
		ls.logReturning();		
	}
}
