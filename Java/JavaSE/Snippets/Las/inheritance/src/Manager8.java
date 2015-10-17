class Q
{
	Q()
	{
		this(); // recursive construtor invocation
	}
}
public class Manager8 {
	public static void main(String[] args) {
		Q q1 = new Q();
	}
}
