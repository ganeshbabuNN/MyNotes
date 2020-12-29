package com.ganesh.spring3;

public class Hello {
	private A aobj;
	private B bobj;
	
	public Hello() {
		System.out.println("Hello-D.C");
	}

	public void show(){
		System.out.println(aobj);
		System.out.println(bobj);
	}
}
