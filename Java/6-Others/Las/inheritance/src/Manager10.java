class Q2 extends Q2 // cylic calling
{
	Q2(int i)
	{
		super();
	}
}
public class Manager10 {
	public static void main(String[] args) {
		Q2 q2 = new Q2(20);
	}
}
