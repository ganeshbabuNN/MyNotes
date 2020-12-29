package com.ganesh.spring3;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;


public class Hello {
		private A aobj;
	private B bobj;
	
	@Autowired	
	public Hello(@Qualifier("ao")A aobj,@Qualifier("bo") B bobj) {
		super();
		this.aobj = aobj;
		this.bobj = bobj;
	}



	public void show(){
		System.out.println(aobj);
		System.out.println(bobj);
	}
}
