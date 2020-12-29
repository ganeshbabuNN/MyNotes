package com.ganesh.spring3;

public class A {
	private int a;  //S.I
	private String msg; // S.I
	
	public A() {
	System.out.println("A-D.C");
	}

	public int getA() {
		return a;
	}

	public void setA(int a) {
		this.a = a;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	public void showA(){
		System.out.println("A-showA()");
		System.out.println(a);
		System.out.println(msg);
	}
	
	
}
