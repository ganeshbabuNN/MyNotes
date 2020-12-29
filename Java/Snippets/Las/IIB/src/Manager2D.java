
public class Manager2D {
	private Manager2D(int i)
	{
		System.out.println("i");
		return;
	}
	Manager2D(int j)
	{
		System.out.println("j");
	}
	public static void main(String[] args) {
		new Manager2D(1);
	}
	
}
