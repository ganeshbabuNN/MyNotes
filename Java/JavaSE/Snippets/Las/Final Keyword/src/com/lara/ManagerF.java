package com.lara;

abstract class A4
{
	int i;
	abstract void test2();
	abstract void disp();
}
public class ManagerF extends A4
{
	void test2()
	{
		System.out.println("test() defined");
	}
	 void disp()
	{
		System.out.println("Inside the static method of abstract class");
	}
	 public static void main(String[] args) {
		 ManagerF b1 = new ManagerF();
		 b1.test2();
	}

}
