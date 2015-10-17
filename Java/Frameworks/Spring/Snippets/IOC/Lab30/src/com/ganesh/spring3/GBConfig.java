package com.ganesh.spring3;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.annotation.Scope;

@Configuration
public class GBConfig {
	
	public GBConfig() {
		System.out.println("Spring Container is now getting Ready");
	}
	
	@Bean(name="hello")
	public Hello getHello(){
		System.out.println("getHello()");
		return new Hello();
	}
	
	@Bean(name="hai")
	@Lazy
	public Hai getHai(){
		System.out.println("getHai()");
		return new Hai();
	}
}
