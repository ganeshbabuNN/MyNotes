class A10
{
	final int i;
	void test()
	{
		System.out.println(i);
	}	
	{
		i = 101;
	}
}
public class Finala7 {
public static void main(String[] args) {
	A10 a1 = new A10();
	a1.i = 200;
	System.out.println(a1.i);
}
}
