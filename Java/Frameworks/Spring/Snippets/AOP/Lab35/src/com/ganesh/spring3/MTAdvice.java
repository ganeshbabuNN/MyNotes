package com.ganesh.spring3;

import org.springframework.aop.ThrowsAdvice;
import org.springframework.beans.factory.annotation.Autowired;

public class MTAdvice implements ThrowsAdvice{
	@Autowired
	LogService ls=null;
	
	@Autowired
	TxService ts=null;
	public void afterThrowing(Exception e){
		ts.rollback();
		ls.logThrowing(e);
	}	
}
