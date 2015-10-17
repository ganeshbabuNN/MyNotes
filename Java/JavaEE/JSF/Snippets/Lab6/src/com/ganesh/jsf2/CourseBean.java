package com.ganesh.jsf2;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.SessionScoped;

@ManagedBean(name="courseBean")
@SessionScoped
public class CourseBean {
	@ManagedProperty(value="101")
	private int cid;
	@ManagedProperty(value="JSF2.0")
	private String cname;
	@ManagedProperty(value="3")
	private int duration;
	@ManagedProperty(value="300.50")
	private double cost;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public double getCost() {
		return cost;
	}
	public void setCost(double cost) {
		this.cost = cost;
	}
	@Override
	public String toString() {
		return super.toString()+ "\t" + cid + "\t" +cname+ "\t" +cname
				+ "\t" +duration + "\t" +cost;
	}
}
