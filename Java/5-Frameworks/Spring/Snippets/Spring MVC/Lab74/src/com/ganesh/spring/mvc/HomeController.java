package com.ganesh.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/home.jlc")
	public String showHome(){
		System.out.println("showHome()");
		return "HomeDef";
	}
}
