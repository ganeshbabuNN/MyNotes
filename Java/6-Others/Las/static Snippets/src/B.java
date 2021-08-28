
public class B {
	static int i;
	static
	{
		System.out.println(i);
		i = 100;
	}
	public static void main(String[] args) {
		System.out.println(i);
	}
	static
	{
		System.out.println(i);
		i = 200;
	}
}
