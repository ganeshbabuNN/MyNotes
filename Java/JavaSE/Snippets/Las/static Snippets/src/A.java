
public class A {
	static int i;
	static int j = 10;
	static
	{
		System.out.println(i);
		System.out.println(j);
		i = 100;
		j = 200;
	}
	static
	{
		System.out.println(i);
		System.out.println(j);
		i = 1000;
		j = 2000;
	}
	public static void main(String[] args) {
		System.out.println(i);
		System.out.println(j);
	}
}
