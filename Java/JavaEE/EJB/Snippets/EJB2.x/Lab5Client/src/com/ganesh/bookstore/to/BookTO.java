package com.ganesh.bookstore.to;

import java.io.Serializable;

public class BookTO implements Serializable{
private int bookid;
private String bname;
private String author;
private double cost;
private String cat;
private String pub;
private String isbn;
private int edition;
private String status;
public BookTO() {
}
public BookTO(String bname, String author, double cost, String cat, String pub,
		String isbn, int edition, String status) {
		this.bname = bname;
	this.author = author;
	this.cost = cost;
	this.cat = cat;
	this.pub = pub;
	this.isbn = isbn;
	this.edition = edition;
	this.status = status;
}
public BookTO(int bookid, String bname, String author, double cost, String cat,
		String pub, String isbn, int edition, String status) {
	this.bookid = bookid;
	this.bname = bname;
	this.author = author;
	this.cost = cost;
	this.cat = cat;
	this.pub = pub;
	this.isbn = isbn;
	this.edition = edition;
	this.status = status;
}
//setter and getter
public int getBookid() {
	return bookid;
}
public void setBookid(int bookid) {
	this.bookid = bookid;
}
public String getBname() {
	return bname;
}
public void setBname(String bname) {
	this.bname = bname;
}
public String getAuthor() {
	return author;
}
public void setAuthor(String author) {
	this.author = author;
}
public double getCost() {
	return cost;
}
public void setCost(double cost) {
	this.cost = cost;
}
public String getCat() {
	return cat;
}
public void setCat(String cat) {
	this.cat = cat;
}
public String getPub() {
	return pub;
}
public void setPub(String pub) {
	this.pub = pub;
}
public String getIsbn() {
	return isbn;
}
public void setIsbn(String isbn) {
	this.isbn = isbn;
}
public int getEdition() {
	return edition;
}
public void setEdition(int edition) {
	this.edition = edition;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}


}
