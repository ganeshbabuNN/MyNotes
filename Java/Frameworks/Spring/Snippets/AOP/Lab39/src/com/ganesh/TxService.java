package com.ganesh;

import org.aspectj.lang.ProceedingJoinPoint;

public class TxService {
	public void runTx(ProceedingJoinPoint pjp) throws Throwable{
		System.out.println("TxService--- runTx()..begin");
		begin();
		pjp.proceed();
		commit();
		System.out.println("TxService--- runTx()..end");	
		}
	
		public void begin() {
			System.out.println("TxService -begin()");
		}
	
		public void commit(){
			System.out.println("TxService -commit()");
		}	
	
		public void rollback() {
		System.out.println("TxService- rollback()");
	}
}
