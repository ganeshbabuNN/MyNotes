import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

class Employee implements Comparable<Employee>{

	String name;double salary;
	
	public Employee(String name,double salary){
		this.name = name;
		this.salary = salary;
	}
	
	public double getsalary(){
		return salary;
	}
	
	public String getname(){
		return name;
	}
	@Override
	
	public int compareTo(Employee o1) {
		if (this.salary > o1.salary){
			return -1;
		}
		else
		{
			return 1;
		}
	}
	public String toString(){
		return name + salary;
	}
	
}
public class MyArrayListImplementingComparitor {

	public static void main(String[] args) {
		List<Employee> emplist = new ArrayList<Employee>();
		Employee obj1 = new Employee("vinod", 12.32);
		emplist.add(obj1);
		
		emplist.add(new Employee("bhuvan", 12));
		
		emplist.add(new Employee("arun", 13.23));
	    
		Collections.sort(emplist);
		for(Employee e:emplist){
			System.out.println(e);
		}
		
	}

}
