package com.ganesh.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentController {
	@RequestMapping("/addStudent.jlc")
	public String addStudent(){
		System.out.println("addStudent()");
		return "AddStudentDef";
	}
	
	@RequestMapping("/searchStudent.jlc")
	public String searcuhStudent(){
		System.out.println("searchStudent()");
		return "SearchStudentDef";
	}
	
}
