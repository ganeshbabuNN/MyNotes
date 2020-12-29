package com.ganesh.spring3;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

public class Hello {
	@Autowired
	@Qualifier("ao")
	private A aobj;
	
	@Autowired
	@Qualifier("bo")
	private B bobj;
	
	public void show(){
		System.out.println(aobj);
		System.out.println(bobj);
	}
}
