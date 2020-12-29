package com.ganesh.spring3;

public class Hello {
	private A aobj;
	private B bobj;
	
	public Hello() {
		System.out.println("Hello-D.C");
	}

	public Hello(B bobj) {
		System.out.println("Hello-(B)arg");
		this.bobj = bobj;
	}

	public Hello(A aobj) {
		System.out.println("Hello-(A)arg");
		this.aobj = aobj;
	}

	public Hello(A aobj, B bobj) {
		System.out.println("Hello-(A,B)arg");
		this.aobj = aobj;
		this.bobj = bobj;
	}
	public void show(){
		System.out.println(aobj);
		System.out.println(bobj);
	}
}
