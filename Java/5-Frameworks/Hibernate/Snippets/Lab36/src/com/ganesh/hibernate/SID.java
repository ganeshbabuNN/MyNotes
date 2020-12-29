package com.ganesh.hibernate;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Embeddable;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;
import org.hibernate.engine.SessionImplementor;
import org.hibernate.id.IdentifierGenerator;

@Embeddable
public class SID implements Serializable{
	private String bid;
	private String sid;
	
	public SID() {
		// TODO Auto-generated constructor stub
	}

	public SID(String bid, String sid) {
		super();
		this.bid = bid;
		this.sid = sid;
	}

	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
		this.bid = bid;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	@Override
	public String toString() {
		return "SID [bid=" + bid + ", sid=" + sid + "]";
	}
	
}
