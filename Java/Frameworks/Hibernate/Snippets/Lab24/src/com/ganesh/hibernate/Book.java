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
@Table(name="books")
public class Book {
	@Id
	@Column(name="bid")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer bid;
	@Column(name="bname")
	private String bname;
	@Column(name="cost")
	private double cost;
	@Column(name="edition")
	private int edition;
	@Column(name="pub")
	private String pub;
	@ManyToMany(mappedBy="books")
	private Set<Author> authors;
	public Book() {
		// TODO Auto-generated constructor stub
	}
	public Book(String bname, double cost, int edition, String pub) {
		super();
		this.bname = bname;
		this.cost = cost;
		this.edition = edition;
		this.pub = pub;
	}
	public Integer getBid() {
		return bid;
	}
	public void setBid(Integer bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public double getCost() {
		return cost;
	}
	public void setCost(double cost) {
		this.cost = cost;
	}
	public int getEdition() {
		return edition;
	}
	public void setEdition(int edition) {
		this.edition = edition;
	}
	public String getPub() {
		return pub;
	}
	public void setPub(String pub) {
		this.pub = pub;
	}
	public Set<Author> getAuthors() {
		return authors;
	}
	public void setAuthors(Set<Author> authors) {
		this.authors = authors;
	}
	
}