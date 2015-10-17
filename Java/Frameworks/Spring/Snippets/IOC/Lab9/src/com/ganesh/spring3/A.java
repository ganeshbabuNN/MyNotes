package com.ganesh.spring3;

public class A {
	
	private int a;
	private String msg;
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
	@Override
	public String toString() {
		return "A [a=" + a + ", msg=" + msg + "]";
	}

}
