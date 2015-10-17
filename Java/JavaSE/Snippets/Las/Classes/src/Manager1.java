
class Person
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
public class Manager1 {
	public static void main(String[] args) {
		Person p = new Person();
		System.out.println(p.name);
		System.out.println(p.age);
		System.out.println(p.weight);
		System.out.println(p.height);
	}
}
