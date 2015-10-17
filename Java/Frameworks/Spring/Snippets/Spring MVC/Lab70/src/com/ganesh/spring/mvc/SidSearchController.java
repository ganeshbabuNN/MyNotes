package com.ganesh.spring.mvc;

import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class SidSearchController {
	
	@Autowired
	private SidValidator sidValidator;
	
	@RequestMapping(value="/searchStudent",method=RequestMethod.POST)
	@ExceptionHandler({StudentNotFoundException.class})
	public String searchStudent(@ModelAttribute("sidSearchCommand") SidSearchCommand sidCommand, Errors errors,HttpServletRequest req,Model model) {
		System.out.println("searchStudent");
		sidValidator.validate(sidCommand, errors);
		if(errors.hasErrors()){
			System.out.println(errors.getErrorCount());
			return "sidsearch";
		}
		String sid=sidCommand.getSid();
		String result="";
		System.out.println(sid);
		if(sid.equals("GB-123") || sid.equals("GB-999")){
			StudentTO sto = new StudentTO();
			sto.setSid(sid);
			sto.setBid("B-99");
			sto.setEmail("ga@jl.co");
			sto.setSname("Ganesh");
			sto.setPhone("9999");
			model.addAttribute("STO", sto);
			//req.setAttribute("STO", sto);
			result="sidresults";
		}else{
			req.setAttribute("sidSearchCommand", sidCommand);
			throw new StudentNotFoundException(sid);
		}
		return result;
	}
	
	@RequestMapping(value="/sidsearch")
	protected String showSearchPage(Map model) throws ServletException{
		System.out.println("showSearchPage");
		SidSearchCommand sidCommand = new SidSearchCommand();
		model.put("sidSearchCommand", sidCommand);
		return "sidsearch";
	}
}
