package com.ganesh.spring3;

public class A {

	private int a;
	private String msg;

	public void setA(int a) {
		System.out.println("A-setA()");
		this.a = a;
	}

	public void setMsg(String msg) {
		System.out.println("A-setMsg()");
		this.msg = msg;
	}

	@Override
	public String toString() {
		return "A [a=" + a + ", msg=" + msg + "]";
	}

}
