class A16
{
	static final int i;
	A16()
	{
		System.out.println(i);
	}
}
public class Finala13 {
	public static void main(String[] args) {
		A16 a1 = new A16();
		A16.i = 122;
		System.out.println(a1.i);
	}
}
