package com.ganesh.struts2;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class JLCInterceptor implements Interceptor {
	public void destroy() {
	}
	public void init() {
	}
	public String intercept(ActionInvocation invocation) throws Exception {
		System.out.println("Pre Processing Code of JLCInterceptor Here");
		ActionContext ac = invocation.getInvocationContext();
		Map sessionMap = ac.getSession();
		sessionMap.put("JLCMSG", "Welcome to Java Learning Center");
		String result = invocation.invoke();
		System.out.println("Posst Processing Code of JLCInterceptor Here");
		return result;
	}

}
