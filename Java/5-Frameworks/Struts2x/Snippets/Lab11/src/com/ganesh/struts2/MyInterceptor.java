package com.ganesh.struts2;

import java.util.Calendar;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class MyInterceptor implements Interceptor {
	public void destroy() {
	}
	public void init() {
	}
	public String intercept(ActionInvocation invocation) throws Exception {
		System.out.println("Pre Processing Code of MyInterceptor Here");
		ActionContext ac = invocation.getInvocationContext();
		Map sessionMap = ac.getSession();
		Calendar calender =Calendar.getInstance();
		int hour = calender.get(Calendar.HOUR_OF_DAY);
		String greeting =(hour<6)? "Good Evening" :
			((hour <12) ? "Good Morning":
			((hour <18) ? "Good Afternoon": "Good Evening"));
		sessionMap.put("Greeting", greeting);
		String result = invocation.invoke();
		System.out.println("Posst Processing Code of MyInterceptor Here");
		return result;
	}

}
