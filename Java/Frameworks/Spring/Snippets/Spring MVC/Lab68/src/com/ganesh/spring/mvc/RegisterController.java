package com.ganesh.spring.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

public class RegisterController extends SimpleFormController{
	
	protected ModelAndView onSubmit(HttpServletRequest request,
			HttpServletResponse response, Object command, BindException errors)
			throws Exception {
			Student stu=(Student)command;
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
			String view=getSuccessView();
		return new ModelAndView(view, "student",stu);
	}
	
	@Override
	protected Object formBackingObject(HttpServletRequest request)
			throws Exception {
		Student stu = new Student();
		stu.setSid("GB-99");
		return stu;
	}
}
