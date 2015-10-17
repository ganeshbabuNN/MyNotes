class E
{
	int i;
	E(double i)
	{
		System.out.println("cons1");
	}
	E(int i)
	{
		System.out.println("cons2");
	}
	E()
	{
		System.out.println("cons3");
	}
}
public class Manager3 {
	public static void main(String[] args) {
		E e1 = new E();
		System.out.println("---------");
		E e2 = new E(10.20);
		System.out.println("---------");
		E e3 = new E(100);
		System.out.println("---------");
	}
}
