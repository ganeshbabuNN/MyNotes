package com.ganesh.spring.rest.controller;

import java.util.ArrayList;
import org.springframework.web.servlet.DispatcherServlet;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ganesh.spring.rest.to.StudentTO;
import com.ganesh.spring.rest.to.Students;

@Controller
@RequestMapping("/student")
public class StudentController {
	@RequestMapping(value="/getbyid/{id}",method=RequestMethod.GET)
	public String getStudent(@PathVariable int id,ModelMap model){
		System.out.println("in getStudent()");
		StudentTO st = new StudentTO(id, "Sri", "ga@l.com", 99999);
		model.addAttribute("STUD", st);
		return "index";
	}
	
	@RequestMapping(value="/add/{name}/{email}/{phone}",method=RequestMethod.POST)
	public String addStudent(@PathVariable String name,@PathVariable String email,@PathVariable long phone,ModelMap model){
		System.out.println("ind addStudent()");
		StudentTO st = new StudentTO(123, name, email, phone);
		System.out.println("in server"+ st);
		model.addAttribute("ADDED","Student info Added Successfully");
		return "index";
	}
	@RequestMapping(value="/getall",method=RequestMethod.GET)
	public String getAllStudent(ModelMap model){
		System.out.println("in getAllstudents()");
		List<StudentTO> studList= new ArrayList<StudentTO>();
		studList.add(new StudentTO(1, "Ganesh", "ga@l.com", 9338393));
		studList.add(new StudentTO(2, "Ganesh", "ga@l.com", 9338393));
		studList.add(new StudentTO(3, "Ganesh", "ga@l.com", 9338393));
		studList.add(new StudentTO(4, "Ganesh", "ga@l.com", 9338393));
		Students list = new Students();
		list.setStudList(studList);
		model.addAttribute("LIST",list);
		return "index";
	}
}
