class N
{
	N()
	{
		this(10); // cylic construtor invocations.
		System.out.println(1);
	}
	N(int i)
	{
		this();
		System.out.println(2);
	}
}
public class Manager6 {
	public static void main(String[] args) {
		System.out.println("done");
	}
}
