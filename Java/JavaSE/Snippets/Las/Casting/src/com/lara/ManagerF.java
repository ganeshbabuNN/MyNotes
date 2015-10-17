package com.lara;

class A5
{
	int i;
}
class B5 extends A5
{
	int j;
}
class C5 extends B5
{
	int k;
}
public class ManagerF {
	public static void main(String[] args) {
		A5 a1 = new B5();
		C5 c1 = (C5)a1;
		System.out.println(a1.i);
		System.out.println(c1.i);
		System.out.println(c1.j);
		System.out.println(c1.k);
		B5 b1 = (B5)a1;
		A5 a2 = b1;
		System.out.println(b1.i);
		System.out.println(b1.j);
		System.out.println(b1.k);
		System.out.println(a2.i);
		System.out.println(a2.j);
	}
}
