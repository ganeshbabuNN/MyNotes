class K
{
	K()
	{
		System.out.println(1);
	}
}
class L extends K
{
	L()
	{
		System.out.println(2);
	}
}
class M extends L
{
	M()
	{
		System.out.println(3);
		super();  /// super must be first statement in the construtor
	}	
}
public class Manager5 {
	M m = new M();
}
