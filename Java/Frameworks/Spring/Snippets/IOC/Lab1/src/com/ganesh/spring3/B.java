package com.ganesh.spring3;

public class B {
	private int b;   //C.I
	private String str;  //C.I
	
	public B(int b, String str) {
		this.b = b;
		this.str = str;
	}
	
	
	public void showB(){
		System.out.println("B-showB()");
		System.out.println(b);
		System.out.println(str);
	}
}
