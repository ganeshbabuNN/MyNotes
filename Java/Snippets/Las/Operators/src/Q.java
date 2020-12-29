
public class Q {
	public static void main(String[] args) {
		int i = 0;
		i = ++i + i-- + test(++i)+ ++i;
		//	1     1			2       2
		//  1	  0
		System.out.println(i);
	}
	public static int test(int i)
	{
		return ++i;
	}
}
