class G1
{
	G1(boolean b)
	{
		System.out.println(b);
	}
}
class H1 extends G1
{
	H1()
	{
		super(true);
		System.out.println(1);
	}
}
public class Manager3A {
	public static void main(String[] args) {
		H1 h1 = new H1();
		System.out.println("done");
	}
	
}
