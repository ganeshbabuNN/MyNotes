package com.ganesh.struts2;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.ParameterAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class HelloAction extends ActionSupport implements ServletRequestAware,ServletResponseAware,RequestAware,SessionAware,ApplicationAware,ParameterAware,Preparable,ModelDriven<User> {
	private User user;
	private HttpServletRequest request;
	private HttpServletResponse response;
	private Map ctxMap;
	private Map sesMap;
	private Map reqMap;
	private Map rpMap;
	
	static {
		System.out.println("HelloAction - S.B");
	}
	
	public HelloAction(){
		System.out.println("HelloAction - D.C");
	}
	@Override
	public void validate() {
		System.out.println("HelloAction - validate()");		
	}
	
	@Override
	public String execute() throws Exception {
		System.out.println("HelloAction - execute()");	
		System.out.println("Sname: "+ user.getSname());
		System.out.println("Email: "+ user.getEmail());
		return "success";
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		System.out.println("HelloAction - setServletRequest()");
		this.request=request;
		
	}
	@Override
	public void setServletResponse(HttpServletResponse response) {
		System.out.println("HelloAction - setServletResponse()");	
		this.response=response;
		
	}
	
	@Override
	public void setApplication(Map<String, Object> ctxMap) {
		System.out.println("HelloAction - setApplication()");
		this.ctxMap=ctxMap;		
	}

	@Override
	public void setSession(Map<String, Object> sesMap) {
		// TODO Auto-generated method stub
		System.out.println("HelloAction - setSession()");
		this.sesMap = sesMap;		
	}

	@Override
	public void setRequest(Map<String, Object> reqMap) {
		// TODO Auto-generated method stub
		System.out.println("HelloAction - setRequest()");
		this.reqMap=reqMap;
		
	}
	
	@Override
	public void setParameters(Map<String, String[]> rpMap) {
		// TODO Auto-generated method stub
		System.out.println("HelloAction - setParameters()");
		this.rpMap=rpMap;		
	}
	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		System.out.println("HelloAction - getModel()");
		return user;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("HelloAction - prepare()");
		user = new User();		
	}

	

	


}
