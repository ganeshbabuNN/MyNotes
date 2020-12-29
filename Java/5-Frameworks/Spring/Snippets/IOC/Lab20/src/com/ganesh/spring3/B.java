package com.ganesh.spring3;

public class B {
	private int b;
	private String str;
	static {
		System.out.println("B-S.B");
	}
	
	public B() {
		System.out.println("B-D.C");
	}

	public B(int b, String str) {
		System.out.println("B(int,String)");
		this.b = b;
		this.str = str;
	}
	
	public void init(){
		System.out.println("B-init()");
	}

	@Override
	public String toString() {
		return "B [b=" + b + ", str=" + str + "]";
	}

}
