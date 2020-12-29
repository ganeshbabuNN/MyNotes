package com.ganesh.jsf12;

public class CourseBean {
	private int cid;
	private String cname;
	private int duration;
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
