package com.jlc;

class Hai
{
	@Override
	protected void finalize() throws Throwable {
		System.out.println("Hai- finalize");
	}
}
class Hello
{
	void m1()
	{
		System.out.println("m1()start");
		Hai hai1 = new Hai();
		Hai hai2 = new Hai();
		Hai hai3 = new Hai();
		System.out.println("m1()end");
	}
	void m2()
	{
		System.runFinalization();
		System.gc();
		System.out.println("m2()start");
		Hai hai = new Hai();
		hai = null;
		System.out.println("m2()end");
	}
	@Override
	protected void finalize() throws Throwable {
		System.out.println("Hello-finalize");
	}
}
public class Lab3A {
	public static void main(String[] args) {
		Hello h1 = new Hello();
		h1.m1();
		h1.m2();
		System.runFinalization();
		System.gc();
		Hello h2 = new Hello();
		Hello h3 = new Hello();
		h2 = h3;
		System.runFinalization();
		System.gc();
	}
}
