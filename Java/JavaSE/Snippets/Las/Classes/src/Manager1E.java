
class Person3
{
	String name;
	int age;
	double weight;
	double height;
	void showDays()
	{
		System.out.println("youare"+ age*365 + "daysoID");
	}
}
public class Manager1E {
	public static void main(String[] args) {
		Person3 p1 = new Person3();
		Person3 p2;
		p1.name = "Ramesh";
		p1.age = 29;
		p1.weight = 59.00;
		p1.height = 5.9;
		p2 = p1;
		
		p1.showDays();
		p2.showDays();
		p1 = null;
		p1.showDays();
	}
}
