package com.ganesh.spring3;

import javax.annotation.PostConstruct;

public class A {

	private int a;
	private String msg;
	
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
	
	@PostConstruct
	public void init(){
		System.out.println("A-init()");
	}

	@Override
	public String toString() {
		return "A [a=" + a + ", msg=" + msg + "]";
	}

}
