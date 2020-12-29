package com.ganesh.spring3;

public class B {
	private int b;
	private String msg;
	public B(int b, String msg) {
		super();
		this.b = b;
		this.msg = msg;
	}
	@Override
	public String toString() {
		return "B [b=" + b + ", msg=" + msg + "]";
	}
}
