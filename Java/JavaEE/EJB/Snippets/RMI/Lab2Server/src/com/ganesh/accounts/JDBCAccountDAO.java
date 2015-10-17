package com.ganesh.accounts;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JDBCAccountDAO implements AccountDAO {

	public double deposit(int accno, double amt) {
		double nbal = 0.0;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = JDBCUtil.getOracleConnection();
			ps = con.prepareStatement("select bal from accounts where accno=?");
			ps.setInt(1, accno);
			rs = ps.executeQuery();
			if (rs.next()) {
				double bal1 = rs.getDouble(1);
				nbal = bal1 + amt;
				ps = con.prepareStatement("update accounts set bal = ? where accno = ? ");
				ps.setDouble(1, nbal);
				ps.setInt(2, accno);
				ps.executeUpdate();
			} else {
				throw new InvalidAccountNumberException();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.cleanup(con, ps, rs);
		}
		return nbal;
	}

	public double getBalance(int accno) {
		double bal = 0.0;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = JDBCUtil.getOracleConnection();
			ps = con.prepareStatement("select bal from accounts where accno = ?");
			ps.setInt(1, accno);
			rs = ps.executeQuery();
			if (rs.next()) {
				bal = rs.getDouble(1);
			} else {
				throw new InvalidAccountNumberException();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.cleanup(con, ps, rs);
		}
		return bal;
	}

	public double withdraw(int accno, double amt) {
		double nbal = 0.0;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = JDBCUtil.getOracleConnection();
			ps = con.prepareStatement("select bal from accounts where accno= ? ");
			ps.setInt(1, accno);
			rs =ps.executeQuery();
			if (rs.next()) {
				double bal = rs.getDouble(1);
				if (bal >= amt + 1000) {
					nbal = bal - amt;
					ps = con.prepareStatement("update accounts set bal = ? where accno =?");
					ps.setDouble(1, nbal);
					ps.setInt(2, accno);
					ps.executeUpdate();
				}
				else {
					throw new InsufficentFundsException();
				}
			}else {
				throw new InvalidAccountNumberException();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.cleanup(con, ps, rs);
		}
		return nbal;
	}

}
