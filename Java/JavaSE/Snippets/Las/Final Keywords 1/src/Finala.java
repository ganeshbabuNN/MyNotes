
class A3
{
	static
	{
		System.out.println("This is A's SIB");
	}
	final void test1()
	{
		System.out.println("this is in Test1()");
	}
}
class B3 extends A3
{
	void test2()
	{
		System.out.println("this is in test2()");
	}
	static
	{
		System.out.println("this is B's SIB");
	}
}
public class Finala {
	public static void main(String[] args) {
		B3 b = new B3();
		b.test1();
		b.test2();
	}
}
