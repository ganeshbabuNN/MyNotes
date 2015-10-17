package com.lara;
abstract class A8
{
	int i;
	abstract void test2();
	abstract void disp();
}
public class ManagerJ extends A8
{
	@Override
	void test2() {
	System.out.println("test2() defined");
		
	}
	@Override
	void disp() {
	System.out.println("inside the static method of abstract class");		
	}
	public static void main(String[] args) {
		ManagerJ m1 = new ManagerJ();
		m1.test2();
	}

}
