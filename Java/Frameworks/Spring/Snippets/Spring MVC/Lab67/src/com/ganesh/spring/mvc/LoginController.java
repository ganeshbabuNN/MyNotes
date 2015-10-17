package com.ganesh.spring.mvc;

import java.util.Map;

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

@Controller
@SessionAttributes
public class LoginController  {
	
	@Autowired
	private UserValidator userValidator;
	
	@RequestMapping(value="/verifyUser",method=RequestMethod.POST)
	protected String verifyUser(@ModelAttribute("user") User user,BindingResult result)
			throws Exception {
			System.out.println("verifyUser() ");
			userValidator.validate(user, result);
			
			if(result.hasErrors()){
				System.out.println(result.getErrorCount());
				return "login";
			}
			//User user =(User)command;
			String un=user.getUsername();
			String pw=user.getPassword();
			System.out.println(un);
			System.out.println(pw);
			
			if(!un.equals(pw)){
				return "login";
			}
		return "home";
	}
	
	@RequestMapping("/login")
	protected String showLoginForm(Map<String, User> model) throws Exception {
		System.out.println("formBackingObject");
		User user= new User();
		user.setUsername("Ganesh");
		model.put("user", user);
		return "login";
	}
}


