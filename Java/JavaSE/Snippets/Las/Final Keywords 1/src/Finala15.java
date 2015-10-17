class A18
{
	static final int i;
	void test1()
	{
		System.out.println("Inside void test1()" + i);
	}
	static
	{
		i = 200;
		System.out.println("inside the a static block I" + i);
	}
    A18()
    {
    	System.out.println("inside a constructor" + i);
    }
}
public class Finala15 {
	
	public static void main(String[] args) {
		A18 a1 = new A18();
		System.out.println(a1.i);
		a1.test1();
	}
	
}
