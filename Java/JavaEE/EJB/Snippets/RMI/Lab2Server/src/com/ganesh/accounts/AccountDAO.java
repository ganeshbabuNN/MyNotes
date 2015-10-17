package com.ganesh.accounts;

public interface AccountDAO {
public double getBalance(int accno);
public double deposit(int accno,double amt);
public double withdraw(int accno,double amt);
}
