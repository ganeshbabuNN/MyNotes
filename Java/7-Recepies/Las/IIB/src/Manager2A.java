class A3
{
	static int p;
	A3()
	{
	
	}
	A3(int i)
	{

	}
	A3(int i, int j)
	{
		p++; 
	}
}
public class Manager2A {
	
	public static void main(String[] args) {
		A3 a1 = new A3();
		A3 a2 = new A3(10);
		A3 a3 = new A3(10,20);
		
	}
}
