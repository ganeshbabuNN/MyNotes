class A
{
	int i;
	A()
	{
		i++;
	}
	A(int k)
	{
		i++;
	}
}
public class Manager {
	public static void main(String[] args) {
		A a1 = new A();
		A a2 = new A();
		A a3 = new A();
		A a4 = new A();
		a1.i = 19;
		
		System.out.println("a1.i= " + a1.i);
	}
}
