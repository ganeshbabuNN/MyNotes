package com.lara;
class A2
{
	int i;
}
class B2 extends A2
{
	int k;
}
class C2 extends B2
{
	int k;
}
public class ManagerC {
	public static void main(String[] args) {
		 B2 b1 = new C2();
		 A2 a1 = b1;
		 C2 c1 = (C2)a1;
		 System.out.println(c1.k);
	}
}
