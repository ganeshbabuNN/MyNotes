class C
{
	int i;
	C()
	{
		System.out.println("Hello to all");
	}	
}
public class Manager1A {
	public static void main(String[] args) {
		C c1 = new C();
		System.out.println(c1.i);
		c1.i = 10;
		System.out.println(c1.i);
	}
}
