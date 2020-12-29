package com.ganesh.hibernate;

import java.util.Map;

import javax.persistence.*;

import org.hibernate.annotations.CollectionOfElements;

@Entity
@Table(name="gcustomers")
@PrimaryKeyJoinColumn(name="cid")
public class GoldCustomer extends Customer {
    @Column(name="ophone")
	private long ophone;
    
    @CollectionOfElements
    @JoinTable(name="refs",
    joinColumns=@JoinColumn(name="cid"))
    @Column(name="remail")
	private Map<String, String> refs; //key column should be mapkey
    
	@Column(name="points")
    private Integer points;

	public GoldCustomer() {
		// TODO Auto-generated constructor stub
	}

	public GoldCustomer(String cname, String email, long phone, long ophone,
			Map<String, String> refs, Integer points) {
		super(cname, email, phone);
		this.ophone = ophone;
		this.refs = refs;
		this.points = points;
	}

	public long getOphone() {
		return ophone;
	}

	public void setOphone(long ophone) {
		this.ophone = ophone;
	}

	public Map<String, String> getRefs() {
		return refs;
	}

	public void setRefs(Map<String, String> refs) {
		this.refs = refs;
	}

	public Integer getPoints() {
		return points;
	}

	public void setPoints(Integer points) {
		this.points = points;
	}
}
