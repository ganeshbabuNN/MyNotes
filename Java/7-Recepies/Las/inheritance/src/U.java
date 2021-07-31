class T
{
	T()
	{
		System.out.println(1);
	}
}
public class U extends T{
	U()
	{
		System.out.println(1);
	}
	U(int i)
	{
		System.out.println(2);
		this(); // this should be first statement
	}

}
