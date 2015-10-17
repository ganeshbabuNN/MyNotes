package com.ganesh.spring3;

import java.lang.reflect.Method;

import org.springframework.aop.MethodBeforeAdvice;
import org.springframework.beans.factory.annotation.Autowired;

public class MBAdvice implements MethodBeforeAdvice{
		@Autowired
		LogService ls=null;
		
		@Autowired
		SecurityService ss=null;
		
		@Autowired
		TxService ts=null;

		public void before(Method method, Object[] args, Object target)
				throws Throwable {
			ss.verifyUser();
			ls.logBefore();
			ts.begin();
		}
				
}
