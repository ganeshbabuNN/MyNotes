
public class R {
	public static void main(String[] args) {
		int i = 0;
		i = i++ + test1(i++) + test1(++i) + test2(i++) + test2(++i);
		//	0			1			 3				3 4			5 6
		//	1			2			 3				4			5
		System.out.println(i);
	}
	public static int test1(int i)
	{
		return i++;		
	}
	public static int test2(int i)
	{
		return ++i;
	}

}
