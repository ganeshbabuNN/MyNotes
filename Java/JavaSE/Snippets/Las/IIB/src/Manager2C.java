
public class Manager2C {
	private Manager2C()
	{
		System.out.println("private construtor or");
		return;
	}
	private void Manager2B()
	{
		System.out.println("Hai");
	}
	public static void main(String[] args) {
		new Manager2C();
	}
	
}
