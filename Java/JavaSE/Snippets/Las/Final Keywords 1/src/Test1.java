
public class Test1 {
	private final int id;
	public Test1(int id)
	{
		this.id = id;
	}
	public void update(int newId)
	{
		
	}

	public int getId() {
		return id;
	}
	public static void main(String[] args) {
		Test1 a1 = new Test1(42);
		a1.update(69);
		System.out.println(a1.id);
	}
}
