class A19
{
	static final int i=1234;
	void test1()
	{
		System.out.println("Inside void test1()" + i);
	}
	void test2()
	{
		int k = i;
		System.out.println("Inside a static block I" + i);
		System.out.println("Inside a static block K" + k);
	}
	A19()
    {
    	System.out.println("inside a constructor" + i);
    }
}
public class Finala16 {
	public static void main(String[] args) {
		A19 a1 = new A19();
		System.out.println(a1.i);
		a1.test1();
		a1.test2();
	}
}
