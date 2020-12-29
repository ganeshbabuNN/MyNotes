package com.lara;

class A4
{
	int i;
}
class B4 extends A4
{
	int j;
}
class C4 extends B4
{
	int k;
}
public class ManagerE {
	public static void main(String[] args) {
		A4 a1 = new B4();
		B4 b2 = (B4)a1;
		System.out.println(b2.j);
	}
}
