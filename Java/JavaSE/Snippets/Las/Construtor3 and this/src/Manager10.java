class E
{
	E()
	{
		System.out.println(1);
	}
	E(int i)
	{
		this();
		System.out.println(2);
	}
}
public class Manager10 {
	public static void main(String[] args) {
		E e1 = new E();
		System.out.println("-------");
		E e2 = new E(10);		
	}
}
