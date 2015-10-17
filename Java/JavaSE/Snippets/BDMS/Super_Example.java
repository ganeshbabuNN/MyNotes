
class Father {

private String first_name,sec_name;
Father(){
	first_name = null;
	sec_name = null;
}
Father(String f_fname,String f_sname){
	first_name = f_fname;
	sec_name = f_sname;
}

void display(){
System.out.println("Father Name:" +  first_name + " " + sec_name);
}
}

class son extends Father{
	String first_name,sec_name;
son(String f_fname,String f_sname,String s_fname,String s_sname){
	super(f_fname,f_sname);
	first_name = s_fname;
	sec_name = s_sname;
}
void display(){
	super.display();
	System.out.println("Son name:" + first_name + " " + sec_name);
	
}
}
public class Super_Example {
	public static void main(String[] args) {


son son_obj = new son("Arun","Bangera","Bhuvan","Sanil");

   
	son_obj.display();

	}

}
