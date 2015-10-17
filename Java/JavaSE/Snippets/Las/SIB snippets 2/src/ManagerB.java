
class ManagerA
{
	static
	{
		System.out.println("I'm in SIB of A");
	}
	public static void main(String[] args) {
		System.out.println("I'm in the main A");
	}
}
public class ManagerB {
	static
	{
		System.out.println("I'm in the SIB of B");
	}
	public static void main(String[] args) {
		System.out.println("Manager1 main begin");
		ManagerA.main(args);
		System.out.println("Manager 1 main end");
	}
}
