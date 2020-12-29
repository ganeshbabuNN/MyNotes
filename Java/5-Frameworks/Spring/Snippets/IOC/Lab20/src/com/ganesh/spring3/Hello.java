package com.ganesh.spring3;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

public class Hello implements InitializingBean,DisposableBean,BeanNameAware,BeanFactoryAware,ApplicationContextAware {
	int x;
	String str;
	String msg;
	String bname;
	
	@Autowired
	A aobj;
	
	B bobj;
	
	ApplicationContext ctx1;
	BeanFactory factory1;
	
	@Autowired
	ApplicationContext ctx2;
	
	@Autowired
	BeanFactory factory2;
	
	static{
		System.out.println("Hello-S.B");
	}
	
	public Hello(int x){
		System.out.println("Hello-(int x)");
		this.x=x;
	}
	
	public void setStr(String str) {
		System.out.println("Hello-setStr");
		this.str = str;
	}
	
	public void setBobj(B bobj) {
		System.out.println("Hello-setBobj");
		this.bobj = bobj;
	}
	
	@PostConstruct
	public void inti1(){
		System.out.println("Hello-inti1");
		msg="Welcome to GANESH";
		if(str==null){
			str="Hai Guys";
		}
	}
	
	public void myinit(){
		System.out.println("Hello-myinit()");
		msg="Welcome to GANESH";
		if(str==null){
			str="Hai Guys";
		}
	}
	
	@PostConstruct
	public void myinit2(){
		System.out.println("Hello-init2()");
		msg="Welcome to GANESH";
		if(str==null){
			str="Hai Guys";
		}
	}
	
	public void afterPropertiesSet() throws Exception {
		System.out.println("Hello-afterPropertiesSet()");	
		msg="Welcome to Ganesh";
		if(str==null){
			str="Hai Guys";
		}
	}
	
	public void myInit(){
		System.out.println("Hello-myInit()");	
		msg="Welcome to Ganesh";
		if(str==null){
			str="Hai Guys";
		}
	}
	public void setBeanName(String bname) {
		System.out.println("Hello-setBeanName()");
		this.bname=bname;
	}


	public void setBeanFactory(BeanFactory factory1) throws BeansException {
		System.out.println("Hello-setBeanFactory()");	
		this.factory1=factory1;
	}
	
	public void setApplicationContext(ApplicationContext ctx1)
			throws BeansException {
		System.out.println("Hello-setApplicationContext()");
		this.ctx1=ctx1;		
	}
	
	public void destroy() throws Exception {
		System.out.println("Hello-destroy()");		
	}
	
	@PreDestroy
	public void cleanup(){
		System.out.println("Hello-Cleanup()");
	}
	
	public void myCleanup(){
		System.out.println("Hello-mycleanup()");
	}
	
	public void show(){
		System.out.println("Hello-show()");
		System.out.println(x);
		System.out.println(str);
		System.out.println(msg);
		System.out.println("Bean name is "+bname);
		System.out.println(factory1);
		System.out.println(ctx1);
		System.out.println(factory2);
		System.out.println(ctx2);
		System.out.println(ctx1=ctx2);
		System.out.println(factory1=factory2);
	}	
}
