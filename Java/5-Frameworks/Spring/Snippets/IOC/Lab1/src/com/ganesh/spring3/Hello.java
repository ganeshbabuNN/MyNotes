package com.ganesh.spring3;

public class Hello {
	private A aobj;  // S.I
	private B bobj;  //C.I
	
	public Hello(B bobj) {
		super();
		this.bobj = bobj;
	}
	public A getAobj() {
		return aobj;
	}
	public void setAobj(A aobj) {
		this.aobj = aobj;
	}
	public B getBobj() {
		return bobj;
	}
	public void setBobj(B bobj) {
		this.bobj = bobj;
	}
	
	public void show(){
		aobj.showA();
		bobj.showB();
	}

}
