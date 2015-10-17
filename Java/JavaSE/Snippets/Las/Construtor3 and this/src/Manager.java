class A
{
	int i;
	static int j;
	void test()
	{
		System.out.println(i);
	}
	static void test1()
	{
		System.out.println(j);
	}
}
public class Manager {
	public static void main(String[] args) {
		A a1 = new A();
		System.out.println(a1.i);
		a1.test();
		a1.test();
		A.test1();
	}
}
