package com.ganesh.spring3;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration

public class HaiConfig {
	
	@Bean(name="hai")
	public Hai getHai(){
		System.out.println("HaiConfig-getHai()");
		return new Hai();
	}
}
