	
public class A {
	public static void main(String[] args) {
		int i = 9;
		i = test(i); // cannot convert void into int
		System.out.println(i);
	}
	static void test(int i)
	{
		i = 10;
	}
	
}
