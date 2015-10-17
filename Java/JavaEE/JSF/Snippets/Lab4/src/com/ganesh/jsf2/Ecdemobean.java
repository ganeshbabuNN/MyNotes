package com.ganesh.jsf2;

import java.util.Locale;
import java.util.Map;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@ManagedBean(name="ecdemoBean")
@SessionScoped
public class Ecdemobean {	
	public Ecdemobean() {
	FacesContext fc = FacesContext.getCurrentInstance();
	ExternalContext ec = fc.getExternalContext();
	// Access the request
	HttpServletRequest req=(HttpServletRequest)ec.getRequest();
	req.setAttribute("SID", "999");
	req.setAttribute("EIM", "sri@jlc.com");
	
	//access the Session
	HttpSession hs = req.getSession();
	hs.setAttribute("SID", "888");
	hs.setAttribute("EM", "vas@jl.com");
	
	//access the context
	ServletContext sc = (ServletContext)ec.getContext();
	sc.setAttribute("SID", "777");
	sc.setAttribute("EM", "sd@jlc.com");
	System.out.println("Yes- initialized");
	}
	
	public String show(){
		FacesContext fc = FacesContext.getCurrentInstance();
		ExternalContext ec = fc.getExternalContext();
		Map<String,Object> reqMap=ec.getRequestMap();
		displayMap1(reqMap);
		System.out.println("--------------");
		Map<String,Object> sesMap=ec.getSessionMap();
		displayMap1(sesMap);
		Map<String,Object> ctxMap=ec.getApplicationMap();
		displayMap1(ctxMap);
		System.out.println("----------");
		Map<String,String> reqParamMap=ec.getRequestParameterMap();
		displayMap2(reqParamMap);
		System.out.println("-----------");
		Map<String,String> ctxParamMap=ec.getInitParameterMap();
		displayMap2(ctxParamMap);
		Map<String,String> headerMap=ec.getRequestHeaderMap();
		displayMap2(headerMap);
		System.out.println("--------------");
		Map<String,Object> cookieMap=ec.getRequestCookieMap();
		displayMap1(cookieMap);
		System.out.println("--------------");
		System.out.println(ec.getRemoteUser());
		Locale loc = ec.getRequestLocale();
		System.out.println(loc.getCountry()+"\t"+loc.getLanguage());
		return "show";
	}

	private void displayMap2(Map<String, String> map) {
		for(Map.Entry<String, String> me:map.entrySet()){
			System.out.println(me.getKey()+"\t"+me.getValue());
		}
	}

	private void displayMap1(Map<String, Object> map) {
		for(Map.Entry<String, Object> me: map.entrySet()){
			System.out.println(me.getKey()+"\t"+me.getValue());
		}
	}	
}
