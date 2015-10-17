package com.lara;

class A23
{
	void test()
	{
		System.out.println("A");
	}
}
class B23 extends A23
{
	void test()
	{
		System.out.println("B");
	}
}
class C23 extends B23
{
	void test()
	{
		System.out.println("C");
	}
}
class Utils
{
	static void method(A23 a)
	{
		a.test();
	}
}
public class ManagerY {
	public static void main(String[] args) {
		A23 a1 = new A23();
		B23 b1 = new B23();
		C23 c1 = new C23();
		Utils u = new Utils();
		u.method(a1);
		u.method(b1);
		u.method(c1);
	}
}
