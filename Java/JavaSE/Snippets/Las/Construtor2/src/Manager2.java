class D
{
	int i;
	D(int i)
	{
		System.out.println("Cons1");
	}
	D()
	{
		System.out.println("cons2");
	}
}
public class Manager2 {
	public static void main(String[] args) {
		D d1 = new D();
		System.out.println("----------");
		D d2 = new D();
		System.out.println("----------");
		D d3 = new D(10);
		System.out.println("----------");
		D d4 = new D(20);
		System.out.println("----------");
		new D();
	}
}
