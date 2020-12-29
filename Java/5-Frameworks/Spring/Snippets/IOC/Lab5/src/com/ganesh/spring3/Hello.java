package com.ganesh.spring3;

public class Hello {
	private A aobj;
	private B bobj;
	public A getAobj() {
		
		return aobj;
	}
	public void setAobj(A aobj) {
		System.out.println("Hello-setAobj()");
		this.aobj = aobj;
	}
	public B getBobj() {
		return bobj;
	}
	public void setBobj(B bobj) {
		System.out.println("Hello-setBobj()");
		this.bobj = bobj;
	}
	
	public void show() {
		System.out.println(aobj);
		System.out.println(bobj);
	}
	
}
