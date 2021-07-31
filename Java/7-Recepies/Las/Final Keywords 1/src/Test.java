
public class Test {
	private final int id;
	public Test(int id)
	{
		this.id = id;
	}
	public void update(int newId)
	{
		id = newId;  //cannot be assigned
	}
	public static void main(String[] args) {
		Test a = new Test(42);
		a.update(69);
		System.out.println(a.id);
	}
	
}
