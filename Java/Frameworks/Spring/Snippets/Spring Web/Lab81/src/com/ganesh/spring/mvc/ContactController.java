package com.ganesh.spring.mvc;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.ganesh.spring.service.ContactService;
import com.ganesh.spring.to.ContactTO;

@Controller
public class ContactController {
	
	@Autowired
	ContactCommandValidator ccValidator;
	
	@Autowired
	SearchContactCommandValidator sccValidator;
	
	@Autowired
	ContactService cs;
	
	@RequestMapping(value="/addContact.jlc")
	public String showAddContactForm(Map<String,Object> map){
		System.out.println("ContactController-showAddContactForm()");
		ContactCommand cc=new ContactCommand();
		map.put("contactCommand", cc);
		return "AddContactDef";
	}
	
	@RequestMapping(value="/searchContact.jlc")
	public String showSearchContactForm(Map<String,Object> map){
		System.out.println("ContactController-showSearchContactForm()");
		SearchContactCommand scc= new SearchContactCommand();
		map.put("searchContactCommand", scc);
		return "SearchContactDef";
	}
	
	@RequestMapping(value="/addContactSubmit.jlc")
	public String addContact(@ModelAttribute("contactCommand") ContactCommand cc,Errors errors,HttpServletRequest req){
		System.out.println("ContactController-addContact()");
		//1.Do validations
		ccValidator.validate(cc, errors);
		if(errors.hasErrors()){
			return "AddContactDef";
		}		
		//2 collection input data 
		String fn=cc.getFname();
		String ln=cc.getLname();
		String em=cc.getEmail();
		String ph=cc.getPhone();
		//3.Call the business service
		ContactTO cto= new ContactTO();
		cto.setFname(fn);
		cto.setLname(ln);
		cto.setEmail(em);
		cto.setPhone(Long.parseLong(ph));
		int cid=cs.addContact(cto);
		//4.Store data as Attribute
		cto.setCid(cid);
		req.setAttribute("CTO", cto);
		//5.Return Tiles Def
		return "AddStudentSuccessDef";		
	}

	@RequestMapping(value="/editContactSubmit.jlc")
	public String editContact(Map<String,Object> map,HttpSession session){
		System.out.println("ContactController-editContact()");
		ContactCommand cc= new ContactCommand();
		map.put("contactCommand", cc);
		session.setAttribute("EDIT", "TRUE");
		return "SearchResultsDef";
	}
	
	
	@RequestMapping(value="/updateContactSubmit.jlc")
	public String updateContact(@ModelAttribute("contactCommand") ContactCommand cc,Errors errors,HttpServletRequest req){
		System.out.println("ContactController-updateContact()");
		//1.Do validations
		ccValidator.validate(cc, errors);
		if(errors.hasErrors()){
			return "SearchResultsDef";
		}
		
		//2 collection input data 
		String cid=cc.getCid();
		String fn=cc.getFname();
		String ln=cc.getLname();
		String em=cc.getEmail();
		String ph=cc.getPhone();
		System.out.println(fn);
		System.out.println(ln);
		System.out.println(em);
		System.out.println(ph);
		
		//3.Call the business service
		ContactTO cto= new ContactTO();
		cto.setCid(Integer.parseInt(cid));
		cto.setFname(fn);
		cto.setLname(ln);
		cto.setEmail(em);
		cto.setPhone(Long.parseLong(ph));
		cs.updateContact(cto);
		//4.Returns Tiles Def
		return "UpdateContactSuccessDef";
	}
	
	
	@RequestMapping(value="/searchContactSubmit.jlc")
	public String searchContact(@ModelAttribute("searchContactCommand") SearchContactCommand scc,Errors errors,HttpServletRequest req){
		System.out.println("ContactController-searchContact()");
		//1.Do validations
		sccValidator.validate(scc, errors);
		if(errors.hasErrors()){
			return "SearchContactDef";
		}
		//2 collection input data 
		String em=scc.getEmail();
		System.out.println(em);
		
		//3.Call the business service
/*		ContactTO cto= new ContactTO();
		cto.setFname("Ganesh");
		cto.setLname("Dande");
		cto.setEmail(em);
		cto.setPhone("9999");
		HttpSession session=req.getSession();
		session.setAttribute("CTO", cto);
		session.setAttribute("EDIT", "FALSE"); */
		
		ContactTO cto = cs.getContactByEmail(em);
		if(cto==null){
			req.setAttribute("NOT_FOUND", "No record Found");
			return "SearchContactDef";
		}else{
			//4.Store data as Attribute
			HttpSession session=req.getSession();
			session.setAttribute("CTO", cto);
			session.setAttribute("EDIT", "FALSE");
		}
		//5.return Tiles Def
		return "SearchResultsDef";
	}

}
