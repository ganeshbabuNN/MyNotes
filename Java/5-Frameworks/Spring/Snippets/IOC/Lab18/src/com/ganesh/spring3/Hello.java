package com.ganesh.spring3;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Required;

public class Hello {
	
	private A aobj;
	private B bobj;
	
	@Required
	@Qualifier("ao")
	public void setAobj(A aobj) {
		System.out.println("Hello-aobj");
		this.aobj = aobj;
	}
	
	@Required
	@Qualifier("bo")
	public void setBobj(B bobj) {
		System.out.println("Hello-bobj");
		this.bobj = bobj;
	}
	
	
	public void show(){
		System.out.println(aobj);
		System.out.println(bobj);
	}
}
