package com.lara;

interface A4
{
	abstract int i = 10;
	public abstract void test();
}
public abstract class B2 implements A4 {
	@Override
	public void test() {
		System.out.println("test");
	}
	public static void main(String[] args) {
		System.out.println(new A4());
	}
}
