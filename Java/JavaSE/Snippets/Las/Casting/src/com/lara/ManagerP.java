package com.lara;

class A15
{
	int i;
}
class B15 extends A15
{
	int j;
}
class C15 extends B15
{
	int k;
}
public class ManagerP {
	public static void main(String[] args) {
		A15 a1 = new B15();
		C15 c1 = (C15)a1;
		System.out.println(a1.i);
		System.out.println(c1.j);
		System.out.println(c1.j);
		System.out.println(c1.k);
		B15 b1 = (B15)a1;
		System.out.println(b1.i);
		System.out.println(b1.j);
		System.out.println(a1.i);		
	}
}
