package com.ganesh.struts2;

import com.opensymphony.xwork2.ActionSupport;

public class SidSearchSubmitAction extends ActionSupport {
	private String sid;
	private StudentTO sto;
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public StudentTO getSto() {
		return sto;
	}
	public void setSto(StudentTO sto) {
		this.sto = sto;
	}
	
	@Override
	public void validate() {
		if(sid== null|| sid.length()==0){
			addFieldError("sid", getText("errors.sid.required"));
		}else if(!sid.startsWith("JLC-")){
			addFieldError("sid", getText("errors.sid.format1"));
		}else{
			String p2 = sid.substring(4);
			try{
				int x= Integer.parseInt(p2);
				if(x<100 || x>999){
					addFieldError("sid", getText("errors.sid.format2"));
				}
			}catch(Exception e){
				addFieldError("sid", getText(" errors.sid.format3"));
			}
		}
	}
	@Override
	public String execute() throws Exception {
		System.out.println(" SidSearchSubmitAction-execute()");
		System.out.println(sid);
		if(sid.equals(sid)){
			sto = new StudentTO();
			sto.setSid(sid);
			sto.setBid("B-99");
			sto.setSname("Ganesh");
			sto.setEmail("ganesh3@gmail.com");
			sto.setPhone("0030303");
		}else {
			throw new StudentNotFoundException(sid);
		}
	return "success" ;
	}	
	
}

