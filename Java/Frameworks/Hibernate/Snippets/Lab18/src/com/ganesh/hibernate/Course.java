package com.ganesh.hibernate;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="jlccourses")
public class Course {
	@Id
	@Column(name="cid")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer cid;
	@Column(name="cname")
	private String cname;
	@Column(name="duration")
	private Integer duration;
	@Column(name="cost")
	private Double cost;
	@ManyToMany(mappedBy="courses")
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