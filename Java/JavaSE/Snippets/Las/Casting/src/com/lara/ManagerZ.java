package com.lara;

abstract class Person
{
	abstract void walkingStyle();
}
class Male extends Person
{
	@Override
	void walkingStyle() {
		System.out.println("special type");
	}
}
class Female extends Person
{
	@Override
	void walkingStyle() {
		System.out.println("normal type");		
	}
}
class Utile
{
	static void checkwalkingstyle(Person p)
	{
		p.walkingStyle();
	}
}
public class ManagerZ {
	public static void main(String[] args) {
		Male m1 = new Male();
		Female f1 = new Female();
		Utile.checkwalkingstyle(m1);
		Utile.checkwalkingstyle(f1);
	}
}
