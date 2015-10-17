package com.lara;

class A10
{
	int i;
}
class B10 extends A10
{
	int j;
}
class C10 extends B10
{
	int k;
}
public class ManagerK {
	static void test(A10 a1)
	{
		B10 b1 = (B10)a1;
		C10 c1 = (C10)a1;
		System.out.println(b1.j);
		System.out.println(c1.k);
	}
	public static void main(String[] args) {
		A10 a1 = new A10();
		test(a1);
		B10 b1 = new B10();
		test(b1);
		C10 c1 = new C10();
		test(c1);
		A10 a2 = new A10();
		test(a2);		
	}
}
