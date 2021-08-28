
class Person2
{
	String name;
	int age;
	double weight;
	double height;
	double FindRunrate()
	{
		double rate = (age/weight)* height;
		return rate;
	}
}
public class Manager1B {
	public static void main(String[] args) {
		Person2 p = new Person2();
		Person2 p1 = new Person2();
		Person2 p2 = new Person2();
		p.name = "Ramesh";
		p.age = 29;
		p.weight = 59.00;
		p.height = 5.9;
		
		p1.name = "Praveen";
		p1.age = 25;
		p1.weight = 63.00;
		p1.height = 5.8;
		
		p2.name = "Kiran";
		p2.age = 24;
		p2.weight = 55.00;
		p2.height = 5.10;

		double rate = p.FindRunrate();
		System.out.println(p.name);
		System.out.println(rate);
		
		rate = p1.FindRunrate();
		System.out.println(p1.name);
		System.out.println(rate);
		
		rate = p2.FindRunrate();
		System.out.println(p2.name);
		System.out.println(rate);		
	}
}
