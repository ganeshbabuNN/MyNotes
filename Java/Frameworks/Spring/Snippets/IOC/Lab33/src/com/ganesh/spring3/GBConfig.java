package com.ganesh.spring3;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


@Configuration
public class GBConfig {
	public GBConfig() {
		System.out.println("Spring Container is now getting Ready");
	}
	
	@Bean(name="hello",initMethod="myInit",destroyMethod="myCleanup")
	public Hello getHello(){
		System.out.println("GBConfig-getHello()");
		return new Hello();
	}
	
	
}
