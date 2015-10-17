import java.util.Hashtable;

class Employee6{
	String name;
	int id;
	double salary;
	
	public Employee6(String name,int id,double salary){
		this.name = name;
		this.id = id;
		this.salary= salary;
	}

	public String getName(){
		return this.name;
	}

	public int getId(){
		return this.id;
	}
	public double getSal(){
		return this.salary;
	}
	public String toString(){
		return "name:" + this.name + "id:" + this.id + "salalry:" + this.salary;
	}
	public int hashcode(){
		System.out.println("inside hashcode");
		return this.getId();
	}
	public boolean equals(Object obj){
		Employee6 e = null;
		if ( obj instanceof Employee6){
			e = (Employee6) obj;
			}
		System.out.println("Is equals");
		if(this.getId() == e.getId())
		{
			return true;
		}
		else
		{
			return false;
		}
		}
	}


public class HashTableImplementationOfWquals {

	public static void main(String[] args) {
		Hashtable<Employee6, String> tm = new Hashtable<Employee6, String>();
		tm.put(new Employee6("Bhuvan",12,1232.12), "BHUVAN");
		tm.put(new Employee6("Brijeh",13,3232.12), "PANDAY");
		tm.put(new Employee6("Nanjesh",14,5232.12), "KON");
	}

}
