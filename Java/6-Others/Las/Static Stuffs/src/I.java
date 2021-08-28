
public class I {
	static int i;
	static int j= 10;
	static
	{
		i = 100;
		j = 200;
	}
	public static void main(String[] args) {
		System.out.println(i);
		System.out.println(j);
	}
}
