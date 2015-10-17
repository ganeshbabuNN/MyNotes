package com.ganesh.spring.mvc;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes
public class ContactController {
	
	@Autowired
	ContactCommandValidator ccValidator;
	
	@Autowired
	SearchContactCommandValidator sccValidator;
	
	@RequestMapping(value="/addContact.jlc")
	public String showAddContactForm(Map<String,Object> map){
		System.out.println("ContactController-showAddContactForm()");
		ContactCommand cc=new ContactCommand();
		map.put("contactCommand", cc);
		return "addContact";
	}
	
	@RequestMapping(value="/searchContact.jlc")
	public String showSearchContactForm(Map<String,Object> map){
		System.out.println("ContactController-showSearchContactForm()");
		SearchContactCommand scc= new SearchContactCommand();
		map.put("searchContactCommand", scc);
		return "searchContact";
	}
	
	@RequestMapping(value="/addContactSubmit.jlc")
	public String addContact(@ModelAttribute("contactCommand") ContactCommand cc,Errors errors,HttpServletRequest req){
		System.out.println("ContactController-addContact()");
		ccValidator.validate(cc, errors);
		if(errors.hasErrors()){
			return "addContact";
		}
		String fn=cc.getFname();
		String ln=cc.getLname();
		String em=cc.getEmail();
		String ph=cc.getPhone();
		System.out.println(fn);
		System.out.println(ln);
		System.out.println(em);
		System.out.println(ph);
		ContactTO cto= new ContactTO();
		cto.setFname(fn);
		cto.setLname(ln);
		cto.setEmail(em);
		cto.setPhone(ph);
		req.setAttribute("CTO", cto);
		return "addContactSuccess";		
	}
	
	@RequestMapping(value="/searchContactSubmit.jlc")
	public String searchContact(@ModelAttribute("searchContactCommand") SearchContactCommand scc,Errors errors,HttpServletRequest req){
		System.out.println("ContactController-searchContact()");
		sccValidator.validate(scc, errors);
		if(errors.hasErrors()){
			return "searchContact";
		}
		String em=scc.getEmail();
		System.out.println(em);
		ContactTO cto= new ContactTO();
		cto.setFname("Ganesh");
		cto.setLname("Dande");
		cto.setEmail(em);
		cto.setPhone("9999");
		HttpSession session=req.getSession();
		session.setAttribute("CTO", cto);
		session.setAttribute("EDIT", "FALSE");
		return "searchResults";
	}
	
	@RequestMapping(value="/updateContactSubmit.jlc")
	public String updateContact(@ModelAttribute("contactCommand") ContactCommand cc,Errors errors,HttpServletRequest req){
		System.out.println("ContactController-updateContact()");
		ccValidator.validate(cc, errors);
		if(errors.hasErrors()){
			return "searchResults";
		}
		String fn=cc.getFname();
		String ln=cc.getLname();
		String em=cc.getEmail();
		String ph=cc.getPhone();
		System.out.println(fn);
		System.out.println(ln);
		System.out.println(em);
		System.out.println(ph);
		ContactTO cto= new ContactTO();
		cto.setFname(fn);
		cto.setLname(ln);
		cto.setEmail(em);
		cto.setPhone(ph);
		req.setAttribute("CTO", cto);
		return "UpdateContactSuccess";
	}
	
	@RequestMapping(value="/editContactSubmit.jlc")
	public String editContact(Map<String,Object> map,HttpSession session){
		System.out.println("ContactController-editContact()");
		ContactCommand cc= new ContactCommand();
		map.put("contactCommand", cc);
		session.setAttribute("EDIT", "TRUE");
		return "searchResults";
	}

}
