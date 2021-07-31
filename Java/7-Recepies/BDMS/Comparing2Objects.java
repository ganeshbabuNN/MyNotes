
class Student{
	String name;
	String age;
	String roll;
	
	public Student(String name,String age,String roll){
		this.name = name;
		this.age = age;
		this.roll = roll;
	}
	public String getRoll(){
		return this.roll;
			
	}
	public boolean equals(Object obj){
		Student e = null;
		boolean returnval = false;	
		if (obj instanceof Student){
				e = (Student)obj;
			if (this.getRoll().equals(e.roll)){
				returnval = true;
			}
			else
			{
				returnval = false;
			}
		}
		return returnval;
	}
	public int hashcode(){
		int hashi = 3;
		return hashi * 7 * this.roll.hashCode();
	}
	
}


public class Comparing2Objects {

	public static void main(String[] args) {
		Student stu1 = new Student("Bhuvan", "26", "ABCD12");
		Student stu2 = new Student("Panday", "26", "ABCD12");
		Student stu3 = new Student("Kon", "26", "ABCD14");
	
		System.out.println("Stu1 equals stu2" + stu1.equals(stu2));
		System.out.println("Stu3 equals stu2" + stu3.equals(stu2));
	}

}
