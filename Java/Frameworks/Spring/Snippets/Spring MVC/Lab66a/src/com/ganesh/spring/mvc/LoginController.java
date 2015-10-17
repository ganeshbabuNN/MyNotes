package com.ganesh.spring.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

public class LoginController extends SimpleFormController {
	@Override
	protected ModelAndView onSubmit(HttpServletRequest request,
			HttpServletResponse response, Object command, BindException errors)
			throws Exception {
			System.out.println("onSubmit** ");
			User user =(User)command;
			String un=user.getUsername();
			String pw=user.getPassword();
			String view="";
			if(un.equals(pw)){
				view=getSuccessView();
			}else {
				view =getFormView();
			}
		return new ModelAndView(view, "user",user);
	}
	
	@Override
	protected Object formBackingObject(HttpServletRequest request)
			throws Exception {
		System.out.println("formBackingObject");
		User user= new User();
		user.setUsername("Ganesh");
		return user;
	}
}


