package com.ganesh.spring.mvc;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class BidSearchController {
	
	@Autowired
	private BidValidator bidValidator;
	
	@RequestMapping(value="/searchStudent",method=RequestMethod.POST)
	public String searchStudent(@ModelAttribute("bidSearchCommand") BidSearchCommand bidSearchCommand, BindingResult errors,HttpServletRequest req){
		System.out.println("searchStudent");
		bidValidator.validate(bidSearchCommand, errors);
		if(errors.hasErrors()){
			System.out.println(errors.getErrorCount());
			return "bidsearch";
		}
		String bid=bidSearchCommand.getBid();
		String result="bidsearch";
		System.out.println(bid);
		if(bid.equals("B-12") || bid.equals("B-99")){
			List<StudentTO> list=new ArrayList<StudentTO>();
			StudentTO sto = new StudentTO();
			sto.setSid("GB-12");
			sto.setBid("bid");
			sto.setSname("Ganesh");
			sto.setEmail("ga@jl.co");			
			sto.setPhone("9999");
			list.add(sto);
			list.add(sto);
			//Add more StudentTO object
			result="bidresults";
			req.setAttribute("LIST",list);
		}else{
			result="bidsearch";
			errors.rejectValue("bid","bid.notfound");
		}
		return result;
	}
	
	@RequestMapping(value="/bidsearch")
	protected String showSearchPage(Map model) throws ServletException{
		System.out.println("showSearchPage");
		BidSearchCommand bidSearchCommand = new BidSearchCommand();
		model.put("bidSearchCommand", bidSearchCommand);
		return "bidsearch";
	}
}
