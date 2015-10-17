package com.ganesh;

public class TxService {
   public void begin() {
		System.out.println("@Before TX -begin()");
	}
	
	public void commit(){
		System.out.println("@AfterReturning TX -commit()");
	}	
	public void rollback() {
		System.out.println("@AfterThrowing TX- rollback()");
	}
}
