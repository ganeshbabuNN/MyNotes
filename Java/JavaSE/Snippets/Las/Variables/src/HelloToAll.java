
public class HelloToAll {
	public static void main(String[] args) {
		System.out.println("Helloworld");
		test(10);
		System.out.println("test ended");
	}
	void test(int i) /// to make a static reference
	{
		System.out.println("i");
	}
}
