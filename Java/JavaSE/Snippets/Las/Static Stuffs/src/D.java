
public class D {	
	static int i = 10;
	static void test()
	{
		System.out.println(i);
	}
	public static void main(String[] args) {
		System.out.println(i);
		i = 20;
		test();
		i = 30;
		test();
	}
}
