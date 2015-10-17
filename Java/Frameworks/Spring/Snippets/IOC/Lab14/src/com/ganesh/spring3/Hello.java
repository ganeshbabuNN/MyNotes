package com.ganesh.spring3;

import org.springframework.beans.factory.annotation.Autowired;

public class Hello {
	private A aobj;
	
	private B bobj;
	public Hello() {
		System.out.println("Hello-D.C");
	}
	@Autowired
	public Hello(A aobj, B bobj) {
		this.aobj = aobj;
		this.bobj = bobj;
	}
	
	public void show(){
		System.out.println(aobj);
		System.out.println(bobj);
	}
}
