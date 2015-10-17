package com.ganesh.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;




@Controller
public class ContactController {
	@RequestMapping(value="/addContact.jlc")
	public String addContact(){
		System.out.println("ContactController-addContact()");
		return "addContact";
	}

	@RequestMapping(value="/updateContact.jlc")
	public String updateContact(){
		System.out.println("ContactController-updatecontact()");
		return "updateContact";
	}
	
	@RequestMapping(value="/searchContact.jlc")
	public String searchContact(){
		System.out.println("ContactController-searchContact()");
		return "searchContact";
	}
	
	@RequestMapping(value="/deleteContact.jlc")
	public String deleteContact(){
		System.out.println("ContactController-deleteContact()");
		return "deleteContact";
	}
}
