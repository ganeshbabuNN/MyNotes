package com.ganesh.spring.mvc;

import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindException;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

@Controller
@SessionAttributes
public class RegisterController {
	
	@Autowired
	private StudentValidator studentValidator;
	
	@RequestMapping(value="/registerStudent",method=RequestMethod.POST)
	protected String registerStudent(@ModelAttribute("student") Student stu,BindingResult result) throws ServletException{
			System.out.println("registerStudent");
			studentValidator.validate(stu,result);
			if(result.hasErrors()){
				System.out.println(result.getErrorCount());
				return "register";
			}
			System.out.println(stu.getSid());
			System.out.println(stu.getSname());
			System.out.println(stu.getEmail());
			System.out.println(stu.getPhone());
			System.out.println(stu.getGender());
			System.out.println(stu.getQualification());
			String tim[]=stu.getTimings();
			for(int i=0;i<tim.length;i++){
				System.out.println(tim[i]);
			}
			System.out.println(stu.getRemarks());
		return "home";
	}
	
	@RequestMapping(value="/register")
	protected String showRegisterForm(Map<String, Student> model) throws ServletException {
		System.out.println("showRegisterForm");
		Student stu = new Student();
		stu.setSid("GB-88");
		model.put("student", stu);
		return "register";
	}
}
