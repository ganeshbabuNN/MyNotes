class A1
{
	A1()
	{
		
	}
	A1(int i)
	{
	
	}
	A1(int i, int j)
	{
		System.out.println("Objects created");
	}
}
public class ManagerA {
	public static void main(String[] args) {
		A1 a1 = new A1();
		A1 a2 = new A1(12);
		A1 a3 = new A1(10,20);
	}
}
