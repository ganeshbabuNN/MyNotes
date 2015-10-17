class A13
{
	final int i;
	A13()
	{
		i = 150;
		System.out.println(i);
	}
	{
		i = 200;
	}
}
public class Finala10 {
	public static void main(String[] args) {
		A13 a1 = new A13();
		System.out.println(a1.i);
	}
}
