package com.ganesh.spring3;

import org.springframework.beans.factory.annotation.Autowired;


public class Hello {
	@Autowired(required=false)
	private A aobj;
	@Autowired
	private B bobj;
	
	public void show(){
		System.out.println(aobj);
		System.out.println(bobj);
	}
}
