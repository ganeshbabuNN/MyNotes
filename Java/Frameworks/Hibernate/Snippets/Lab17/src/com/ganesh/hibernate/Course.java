package com.ganesh.hibernate;

import java.util.Set;

public class Course {
	private Integer cid;
	private String cname;
	private Integer duration;
	private Double cost;
	private Set<Student> students;
	public Course() {
		// TODO Auto-generated constructor stub
	}
	public Course(String cname, Integer duration, Double cost) {
		super();
		this.cname = cname;
		this.duration = duration;
		this.cost = cost;
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public Integer getDuration() {
		return duration;
	}
	public void setDuration(Integer duration) {
		this.duration = duration;
	}
	public Double getCost() {
		return cost;
	}
	public void setCost(Double cost) {
		this.cost = cost;
	}
	public Set<Student> getStudents() {
		return students;
	}
	public void setStudents(Set<Student> students) {
		this.students = students;
	}
	@Override
	public String toString() {
		return "Course [cid=" + cid + ", cname=" + cname + ", duration="
				+ duration + ", cost=" + cost + "]";
	}
}