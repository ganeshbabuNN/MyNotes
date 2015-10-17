package com.lara;

class A20
{

}
class B20 extends A20
{

}
class C20 extends B20
{

}
class D20 extends C20
{
	
}
class Util
{
	static void test(Object o1)
	{
		if(o1 instanceof A20)
		{
			System.out.println("can be converted A");
		}
		if(o1 instanceof B20)
		{
			System.out.println("able to convert to B");
		}
		if(o1 instanceof C20)
		{
			System.out.println("able to convert to C");
		}
	}
}
public class ManagerU {
	public static void main(String[] args) {
		A20 a1 = new A20();
		A20 a2 = new B20();
		A20 a3 = new C20();
		B20 b1 = new B20();
		B20 b2 = new C20();
		Util.test(a1);
		System.out.println("------");
		Util.test(a2);
		System.out.println("------");
		Util.test(b1);
		System.out.println("------");
		Util.test(b2);
		System.out.println("------");
		Util.test(new D());
	}
}
