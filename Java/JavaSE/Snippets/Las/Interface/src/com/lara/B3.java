package com.lara;

interface A5
{
	 int i ;  // must be intialized
	public abstract void test();
}
public abstract class B3 implements A5{
	@Override
	public void test() {
		System.out.println("test");
	}
	public static void main(String[] args) {
		A5 a1 = new B3(); // cannot intiate the abstract Class
		a1.i = 20;
		System.out.println(new B().i);
	}
}
