package com.ganesh.spring.mvc;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Hellocontroller {
	
	@RequestMapping(value="/hello.jlc")
	public String showHello(Map model){
		System.out.println("showHello()");
		return "hello";
	}
	
	@RequestMapping(value="/hai.jlc")
	public String showHai(){
		System.out.println("showHai()");
		return "hai";
	}
	
	@RequestMapping(value="/hellohai.jlc")
	public String showHelloHai(Map model){
		System.out.println("showHelloHai()");
		return "hellohai";
	}
}
