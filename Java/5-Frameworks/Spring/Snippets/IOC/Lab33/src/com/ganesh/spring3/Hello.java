package com.ganesh.spring3;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;

public class Hello implements InitializingBean,DisposableBean{
	static {
		System.out.println("Hello-S.B");
	}
	public Hello() {
		System.out.println("Hello-D.C");		
	}
	
	@PostConstruct
	public void init(){
		System.out.println("Hello-init()");
	}
	
	
	public void afterPropertiesSet() throws Exception {
		System.out.println("Hello-afterPropertiesSet()");	
		
	}
	
	public void myInit(){
		System.out.println("Hello-mynit()");
	}
	
	@PreDestroy
	public void cleanup(){
		System.out.println("Hello-cleanup()");			
	}
	
	public void destroy() throws Exception {
		System.out.println("Hello-destroy()");		
	}
	
	public void myCleanup(){
		System.out.println("Hello-mycleanup()");
	}
	
	public void show(){
		System.out.println("Hello-show()");
	}
		
	
}
