
class Person1
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
public class Manager1A {
	public static void main(String[] args) {
		Person1 p = new Person1();
		p.name = "Ramesh";
		p.age = 29;
		p.weight = 59.00;
		p.height = 5.9;
		System.out.println(p.name);
		System.out.println(p.age);
		System.out.println(p.weight);
		System.out.println(p.height);
	}
}
