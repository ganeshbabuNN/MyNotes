package com.ganesh.spring3;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Qualifier;

public class Hello {
	
	@Inject
	private A aobj;
	
	@Inject
	@Qualifier("bo")
	private B bobj;
	
	public void show(){
		System.out.println(aobj);
		System.out.println(bobj);
	}
}
