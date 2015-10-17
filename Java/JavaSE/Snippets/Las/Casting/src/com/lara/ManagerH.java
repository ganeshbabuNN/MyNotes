package com.lara;
class A7
{
	int i;
}
class B7 extends A7
{
	int j;
}
class C7 extends B7
{
	int k;
}
public class ManagerH {
	public static void main(String[] args) {
		C7 c1 = (C7)new A7();
		B7 b1 =  (C7)new B7();
		C7 c2 = (B7)(C7)new A7();
	}
}
