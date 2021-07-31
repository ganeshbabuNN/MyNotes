class A14
{
	static final int i;
	A14()
	{
		System.out.println(i);
	}
	{
		i = 200;
	}
}
public class Finala11 {
	public static void main(String[] args) {
		A14 a1 = new A14();
		System.out.println(a1.i);
	}
}
