package com.lara;

class A24
{
	int i =10;
}
class B24 extends A24
{
	int j = 110;
}
class Utilf
{
	void test(A24 a1)
	{
		System.out.println(a1.i);
		System.out.println(a1.j);
	}
	
}
public class ManagerZZ 
{
	public static void main(String[] args) {
		A24 a1 = new A24();
		B24 b1 = new B24();
		Utilf u = new Utilf();
		u.test(a1);
		u.test(b1);
	}

}
