package com.lara;

class 20
{
	int i;
}
class B19 extends A19
{
	int j;
}
class C19 extends B19
{
	int k;
}
public class ManagerT {
	static void test1(A19 a1)
	{
		B19 b1 = (B19)a1;
		C19 c1 = (C19)a1;
		System.out.println("b1.j");
		System.out.println("c1.k");
	}
	public static void main(String[] args) {
		A19 a1 = new C19();
		test1(a1);
		B19 b1 = new B19();
		test1(b1);
		C19 c1 = new C19();
		test1(c1);
		A19 a2 = new A19();
		test1(a1);
	}
}
