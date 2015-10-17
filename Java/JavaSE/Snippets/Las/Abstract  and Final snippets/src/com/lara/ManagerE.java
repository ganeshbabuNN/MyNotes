package com.lara;

abstract class A5
{
	abstract void test1();
}
abstract class B2 extends A5
{
	
}
class C1 extends B2
{
	@Override
	public void test1() {
		System.out.println("hello");
	}
}
public class ManagerE {

}
