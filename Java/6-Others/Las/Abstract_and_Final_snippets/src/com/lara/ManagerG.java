package com.lara;

abstract class A7
{
	abstract void test2();
}
class B5 extends A7
{
	void test2(){
		System.out.println("test() defined");
	}
}
public class ManagerG {
	public static void main(String[] args) {
		A7 a1 = new A7(); // we cannot create object to abstract class a7
		a1.test2();
	}
	
}
