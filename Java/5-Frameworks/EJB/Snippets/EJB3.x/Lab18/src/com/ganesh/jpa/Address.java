package com.ganesh.jpa;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="addresses")
public class Address {
	@Id
	@Column(name="aid")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer aid;
	@Column(name="street")
	private String street;
	@Column(name="city")
	private String city;
	@Column(name="country")
	private String country;
	@Column(name="pin")
	private String pin;
	public Address() {
	}
	public Address(String street, String city, String country, String pin) {
		this.street = street;
		this.city = city;
		this.country = country;
		this.pin = pin;
	}


	public Integer getAid() {
		return aid;
	}


	public void setAid(Integer aid) {
		this.aid = aid;
	}


	public String getStreet() {
		return street;
	}


	public void setStreet(String street) {
		this.street = street;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}


	public String getPin() {
		return pin;
	}


	public void setPin(String pin) {
		this.pin = pin;
	}


	@Override
	public String toString() {
		return super.toString()+"\t"+street+"\t"+city+"\t"+country+"\t"+pin;
	}

}
