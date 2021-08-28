import java.util.Hashtable;
import java.util.Map;


class Employeex {
	String id;
	String name;
	double salary;
	
	public Employeex(String id,String name,double salary){
		this.id = id;
		this.name = name;
		this.salary = salary;
	}
	public String getId(){
		return this.id;
	}

	public String toString(){
		return "Id:" + this.id + "Name:" + this.name + "salary:" + this.salary;
		
	}
	public int hashcode(){
		return Integer.valueOf(getId());
	}
	public boolean equals(Object obj){
		Employeex e = null;
		if (obj instanceof Employeex){
			e = (Employeex)obj;
		}
		if (this.getId() == e.getId()){
			return true;
		}
		else
		{
			return false;
		}
	}

}

public class HashTableImplemet {

	public static void main(String[] args) {
		
		Map<Employeex, String> emphash = new Hashtable<Employeex, String>();
		emphash.put(new Employeex("123", "Bhuvan", 123456.00), "Sanil");
		System.out.println("Hash code of bhuvan:" +emphash.hashCode());
		emphash.put(new Employeex("124", "Panday", 12323.32),"Brijesh");
		
		
	}

}
