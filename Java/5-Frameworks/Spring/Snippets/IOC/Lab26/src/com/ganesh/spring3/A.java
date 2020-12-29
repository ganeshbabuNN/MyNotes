package com.ganesh.spring3;

import javax.annotation.PostConstruct;

public class A {

	private int a;   //S.I
	private String msg; //S.I
	
	static{
		System.out.println("A-S.B");
	}
	
	public A() {
		System.out.println("A()-DC");		
	}
	public void setA(int a) {
		this.a = a;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	@Override
	public String toString() {
		return "A [a=" + a + ", msg=" + msg + "]";
	}

}
