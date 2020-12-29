package com.ganesh.bookstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.ganesh.bookstore.to.BookTO;
import com.ganesh.bookstore.util.DataSourceUtil;

public class JDBCBooksDAO implements BooksDAO{
	
	public int addBook(BookTO bto) {
		int BID =0;
		Connection con = null;
		PreparedStatement ps = null;
		try{
			con= DataSourceUtil.getConnection();
			ps = con.prepareStatement("insert into jlcbooks values(?,?,?,?,?,?,?,?,?)");
			BID = getNextBookBID();
			ps.setInt(1, BID);
			ps.setString(2, bto.getBname());
			ps.setString(3, bto.getAuthor());
			ps.setDouble(4, bto.getCost());
			ps.setString(5, bto.getCat());
			ps.setString(6, bto.getPub());
			ps.setString(7, bto.getIsbn());
			ps.setInt(8, bto.getEdition());
			ps.setString(9, bto.getStatus());
			int x = ps.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();	
		}finally {
			DataSourceUtil.cleanup(ps, con);
		}
		return BID;
	}
	
	public List getAllBooks() {
		List blist = new ArrayList();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try{
			con= DataSourceUtil.getConnection();
			ps = con.prepareStatement("select * from jlcbooks");
			rs = ps.executeQuery();
			while(rs.next()){
				BookTO bto = new BookTO();
				bto.setBookid(rs.getInt(1));
				bto.setBname(rs.getString(2));
				bto.setAuthor(rs.getString(2));
				bto.setCost(rs.getShort(4));
				bto.setCat(rs.getString(5));
				bto.setPub(rs.getString(6));
				bto.setIsbn(rs.getString(7));
				bto.setEdition(rs.getInt(8));
				bto.setStatus(rs.getString(9));
				blist.add(bto);
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally {
				DataSourceUtil.cleanup(rs, ps,con);
			}
		return blist;
	}
	private int getNextBookBID() {
		int bid =1;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try{
			con= DataSourceUtil.getConnection();
			ps = con.prepareStatement("select * max(bookid) from jlcbooks");
			rs = ps.executeQuery();
			if(rs.next()){
				int x = rs.getInt(1);
				bid = x +1;
			}
		}catch(Exception e){
			e.printStackTrace();	
		}finally {
			DataSourceUtil.cleanup(ps, con);
		}
		return bid;
	}	

	public List getBooksByAuthor(String author)  {
		List blist = new ArrayList();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try{
			con= DataSourceUtil.getConnection();
			ps = con.prepareStatement("select * from jlcbooks where author = ?");
			ps.setString(1, author);
			rs = ps.executeQuery();
			while(rs.next()){
				BookTO bto = new BookTO();
				bto.setBookid(rs.getInt(1));
				bto.setBname(rs.getString(2));
				bto.setAuthor(rs.getString(3));
				bto.setCost(rs.getShort(4));
				bto.setCat(rs.getString(5));
				bto.setPub(rs.getString(6));
				bto.setIsbn(rs.getString(7));
				bto.setEdition(rs.getInt(8));
				bto.setStatus(rs.getString(9));
				blist.add(bto);
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally {
				DataSourceUtil.cleanup(rs, ps,con);
			}
		return blist;
	}

	public List getBooksByPub(String pub) {
		List blist = new ArrayList();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try{
			con= DataSourceUtil.getConnection();
			ps = con.prepareStatement("select * from jlcbooks where pub = ?");
			ps.setString(1, pub);
			rs = ps.executeQuery();
			while(rs.next()){
				BookTO bto = new BookTO();
				bto.setBookid(rs.getInt(1));
				bto.setBname(rs.getString(2));
				bto.setAuthor(rs.getString(3));
				bto.setCost(rs.getShort(4));
				bto.setCat(rs.getString(5));
				bto.setPub(rs.getString(6));
				bto.setIsbn(rs.getString(7));
				bto.setEdition(rs.getInt(8));
				bto.setStatus(rs.getString(9));
				blist.add(bto);
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally {
				DataSourceUtil.cleanup(rs, ps,con);
			}
		return blist;
		}
}