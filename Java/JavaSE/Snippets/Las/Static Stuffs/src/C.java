
public class C {
	static int i;
	public static void main(String[] args) {
		System.out.println(i);
		test();
		System.out.println(i);
	}
	static void test()
	{
		i = 20;
	}
}
