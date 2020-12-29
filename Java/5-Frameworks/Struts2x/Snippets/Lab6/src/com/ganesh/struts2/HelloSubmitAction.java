package com.ganesh.struts2;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public  class HelloSubmitAction extends ActionSupport implements ModelDriven<User>
,Preparable,ServletRequestAware,ServletResponseAware,RequestAware,SessionAware
,ApplicationAware{
		private StudentTO sto;
		private User user;
		private int x=999;
		private List<String> emails;
		private List<StudentTO> students;
		
		private HttpServletRequest request;
		private HttpServletResponse response;
		private Map<String,Object> ctxMap;
		private Map<String,Object> sesMap;
		private Map<String,Object> reqMap;
		
		
		public HelloSubmitAction() {
		 Address add = new Address();
		 add.setCity("Bangalore");
		 add.setState("Karnataka");
		 add.setCountry("INDIA");
		 sto = new StudentTO();
		 sto.setSid("JLC-123");
		 sto.setBid("B-99");
		 sto.setSname("Srinivas");
		 sto.setEmail("sriin@gmail.com");
		 sto.setPhone("1111111");
		 sto.setAddress(add);
		 
		 emails = new ArrayList<String>();
		 emails.add("aaa@jlc.com");
		 emails.add("bbb@jlc.com");
		 emails.add("ccc@jlc.com");
		 emails.add("ddd@jlc.com");		 
		 students = new ArrayList<StudentTO>();
		 students.add(sto);
		 students.add(sto);
		 students.add(sto);
		 students.add(sto);
		}
		
		public void validate() {
			if(user.getName()== null || user.getName().length() ==0){
				addFieldError("name", "Name is Requried");
			}
			if(user.getEmail() == null || user.getEmail().length() == 0) {
				addFieldError("email", "Email is Required");
			}
			if(user.getPhone() ==null || user.getPhone().length()==0){
				addFieldError("phone", "Phone is Required");
			}
		}
		
		public String execute() throws Exception {
			System.out.println(user.getName());
			System.out.println(user.getEmail());
			System.out.println(user.getPhone());
			System.out.println(x);
			
			HttpServletRequest req = ServletActionContext.getRequest();
			System.out.println( req == request);
			
			HttpServletResponse res = ServletActionContext.getResponse();
			System.out.println(res = response);
			

			req.setAttribute("UNAME", user.getName());
			reqMap.put("EMAIL", user.getEmail());
			req.setAttribute("EMAILS", emails);
			reqMap.put("STO", sto);
			
			HttpSession session = req.getSession();
			session.setAttribute("UNAME", user.getName());
			sesMap.put("EMAIL", user.getEmail());
			session.setAttribute("EMAILS", emails);
			sesMap.put("STO", sto);
			
			ServletContext ctx = ServletActionContext.getServletContext();
			ctx.setAttribute("UNAME", user.getName());
			ctxMap.put("EMAIL", user.getEmail());		
			ctx.setAttribute("EMAILS", emails);
			ctxMap.put("STO", sto);
			return "success";
		}
		
		public void setServletResponse(HttpServletResponse response) {
			this.response = response;
		}

		public void setServletRequest(HttpServletRequest request) {
			this.request =request;
			
		}
		public void setApplication(Map<String,Object> ctxMap) {
			this.ctxMap = ctxMap;	
		}

		public void setSession(Map<String,Object> sesMap) {
			this.sesMap = sesMap;
			
		}

		public void setRequest(Map<String,Object> reqMap) {
			this.reqMap = reqMap;			
		}

		public User getModel() {
		   return user;
		}

		public void prepare() throws Exception {
			user = new User();			
		}
		//setter and getters

		public StudentTO getSto() {
			return sto;
		}

		public void setSto(StudentTO sto) {
			this.sto = sto;
		}

		public User getUser() {
			return user;
		}

		public void setUser(User user) {
			this.user = user;
		}

		public int getX() {
			return x;
		}

		public void setX(int x) {
			this.x = x;
		}

		public List<String> getEmails() {
			return emails;
		}

		public void setEmails(List<String> emails) {
			this.emails = emails;
		}

		public List<StudentTO> getStudents() {
			return students;
		}

		public void setStudents(List<StudentTO> students) {
			this.students = students;
		}

		public HttpServletRequest getRequest() {
			return request;
		}

		public void setRequest(HttpServletRequest request) {
			this.request = request;
		}

		public HttpServletResponse getResponse() {
			return response;
		}

		public void setResponse(HttpServletResponse response) {
			this.response = response;
		}

		public Map<String, Object> getCtxMap() {
			return ctxMap;
		}

		public void setCtxMap(Map<String, Object> ctxMap) {
			this.ctxMap = ctxMap;
		}

		public Map<String, Object> getSesMap() {
			return sesMap;
		}

		public void setSesMap(Map<String, Object> sesMap) {
			this.sesMap = sesMap;
		}

		public Map<String, Object> getReqMap() {
			return reqMap;
		}

		public void setReqMap(Map<String, Object> reqMap) {
			this.reqMap = reqMap;
		}
		
}
