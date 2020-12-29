import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.SortedSet;


class emp{
	String name;
	double salary;
	
	public emp(String name,Double salary){
		this.name = name;
		this.salary = salary;
	}

	public String getname(){
		return name;
	}
	
	public double getsalary(){
		return salary;
	}
	public String toString(){
		return "name:" + name + "salary:" +salary;
	}
}

class SalComp implements Comparator<emp>{

	@Override
	public int compare(emp o1, emp o2) {
		if (o1.getsalary() < o2.getsalary()){
			return -1;
		}
		else
		{
			return 1;
		}
	}
	
}

public class ArrayListImplementingComparator {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		List<emp> emplist = new ArrayList<emp>();
		emplist.add(new emp("bhuvan", 12.02));
		emplist.add(new emp("arun", 123.2));
		Collections.sort(emplist, new SalComp());
		System.out.println("Sorted entries");
		for(emp e :emplist){
		System.out.println(e);
		
		}
	}

}
