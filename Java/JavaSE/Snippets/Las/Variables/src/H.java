
public class H {
	public static void main(String[] args) {
		int i;
		test(i = 20);
		System.out.println(i);		
	}
	public static void test(int k )
	{
		System.out.println(k);
	}
}
