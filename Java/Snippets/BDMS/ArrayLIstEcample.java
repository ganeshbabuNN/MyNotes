import java.util.ArrayList;


@SuppressWarnings("unused")
class Employee{
	String empname = "";
	int emp_no = 0;
	Employee(String ename,int eno){
		empname = ename;emp_no = eno;
	}			
	void getemp(){
		System.out.println("EMP Name is :" + empname + "EMP no: " + emp_no);
	
	
	}

}

class Personal{
	String name = "";
	String add = "";
	Personal() {
		name = "Bhuvan"; add = "Banglore";
	}

void getname(){
	System.out.println("Name:" + name + "Address:" + add);
}
}

public class ArrayLIstEcample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	Employee emp = new Employee("bhuvan", 98124);
	ArrayList<Employee> emparrayliet = new ArrayList<Employee>();
	emparrayliet.add(emp);
	emparrayliet.get(0).getemp();
	ArrayList<Object> objarraylist = new ArrayList<Object>();
	Personal per = new Personal();
	objarraylist.add(per);
	objarraylist.add(new Employee("Panday", 123));
	Personal pobj = (Personal)objarraylist.get(0);
	Employee eobj = (Employee)objarraylist.get(1);
	pobj.getname();
	eobj.getemp();
	

	
	//objarraylist.get(0);
	
	
	
	
	
	}

}
