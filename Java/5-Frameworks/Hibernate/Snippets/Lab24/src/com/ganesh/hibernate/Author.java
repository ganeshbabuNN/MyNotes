package com.ganesh.hibernate;


import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.persistence.*;

import org.hibernate.annotations.CollectionOfElements;

@Entity
@Table(name="authors")
public class Author {
	@Id	
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="aid")
	private Integer aid;
	@Column(name="aname")
	private String aname;
	@Column(name="email")
	private String email;
	@Column(name="phone")
	private long phone;
	@Column(name="dob")
	private Date dob;
	
	@CollectionOfElements
	@JoinTable(name="qualis",
	joinColumns=@JoinColumn(name="aid"))
	@Column(name="quali")
	private List<String> qualis;
	
	@CollectionOfElements
	@JoinTable(name="exps",
	joinColumns=@JoinColumn(name="aid"))
	@Column(name="exp")
	private Set<String> exps;
	
	@ManyToMany
	@JoinTable(name="books_authors",	
	joinColumns=@JoinColumn(name="aid",referencedColumnName="aid"),	
	inverseJoinColumns=@JoinColumn(name="bid",referencedColumnName="bid"))
	private Set<Book> books;
	public Author() {
		// TODO Auto-generated constructor stub
	}
	public Author(String aname, String email, long phone, Date dob,
			List<String> qualis, Set<String> exps) {
		this.aname = aname;
		this.email = email;
		this.phone = phone;
		this.dob = dob;
		this.qualis = qualis;
		this.exps = exps;
	}
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public List<String> getQualis() {
		return qualis;
	}
	public void setQualis(List<String> qualis) {
		this.qualis = qualis;
	}
	public Set<String> getExps() {
		return exps;
	}
	public void setExps(Set<String> exps) {
		this.exps = exps;
	}
	public Set<Book> getBooks() {
		return books;
	}
	public void setBooks(Set<Book> books) {
		this.books = books;
	}
	
}