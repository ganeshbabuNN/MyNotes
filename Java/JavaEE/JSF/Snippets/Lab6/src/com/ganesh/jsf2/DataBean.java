package com.ganesh.jsf2;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean(name="dataBean")
@SessionScoped
public class DataBean {
	
	private List<String> courses;
	private Map<String,Long> refs;
	public DataBean() {
		courses = new ArrayList<String>();
		courses.add("Java");
		courses.add(" JDBC");
		courses.add("JSP");
		courses.add("EJB");
		courses.add("JPA");
		refs = new HashMap<String, Long>();
		refs.put("aaa", new Long(111));
		refs.put("bbb", new Long(222));
		refs.put("ccc", new Long(333));
		refs.put("eee", new Long(444));
	}
	public List<String> getCourses() {
		return courses;
	}
	public void setCourses(List<String> courses) {
		this.courses = courses;
	}
	public Map<String, Long> getRefs() {
		return refs;
	}
	public void setRefs(Map<String, Long> refs) {
		this.refs = refs;
	}
}
