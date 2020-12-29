package com.ganesh.spring3;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;


@Configuration
@ImportResource("ganesh.xml")
public class GBConfig {
	public GBConfig() {
		System.out.println("Spring Container is now getting Ready");
	}
	
	@Bean(name="hello")
	public Hello getHello(){
		System.out.println("GBConfig-getHello()");
		return new Hello();
	}
}
