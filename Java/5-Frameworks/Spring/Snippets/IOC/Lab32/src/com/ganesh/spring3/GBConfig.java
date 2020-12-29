package com.ganesh.spring3;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


@Configuration
public class GBConfig {
	public GBConfig() {
		System.out.println("Spring Container is now getting Ready");
	}
	
	@Bean(name="hello")
	public Hello getHello(){
		System.out.println("GBConfig-getHello()");
		return new Hello();
	}
	
	@Bean(name="ao")
	public A getA(){
		A obj= new A();
		obj.setA(99);
		obj.setMsg("Ganesh");
		return obj;
	}
	
	@Bean(name="bo")
	public B getB(){
		B obj=new B(88, "Gan");
		return obj;
	}
}
