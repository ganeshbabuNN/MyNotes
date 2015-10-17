class C
{
	C(int i)
	{
		System.out.println(1);
	}
}
class D extends C
{
	D()
	{
		System.out.println(2);
	}
}
public class Manager1 {
	public static void main(String[] args) {
		D d1 = new D();
	}
}
