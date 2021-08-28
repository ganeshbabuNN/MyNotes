
public class P {
	public static void main(String[] args) {
		int i = 0;
		i = i++ + test(i++) + i;
		System.out.println(i);
	}
	public static int test(int i)
	{
		return i++;
	}
}
