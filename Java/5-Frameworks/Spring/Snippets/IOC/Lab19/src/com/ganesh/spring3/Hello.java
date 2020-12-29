package com.ganesh.spring3;

import javax.annotation.Resource;

public class Hello {
	@Resource
	private A aobj;
	@Resource
	private B bobj;
	
	public void show(){
		System.out.println(aobj);
		System.out.println(bobj);
	}
}
