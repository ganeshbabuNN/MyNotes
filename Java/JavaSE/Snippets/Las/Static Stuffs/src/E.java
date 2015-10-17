
public class E {
	static int i = 0;
	static int j = 10;
	static void print()
	{
		System.out.println(i);
		System.out.println(j);
	}
	public static void main(String[] args) {
		print();
		i = j = 20;
		print();
		i = 30;
		j = 40;
		print();
	}
}
