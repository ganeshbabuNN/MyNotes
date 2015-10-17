import java.util.ArrayList;
import java.util.List;



class Thread1 extends Thread{
	public List<String> myarry = new ArrayList<String>();
	String name;
	Thread1(String name){
		this.name = name;
	}
	
	
		public void run(){
		myarry.add("Bhuvan");
		myarry.add("brijesh");
				
	}

class thread2 extends Thread{
	String name;
	thread2(String name){
		this.name = name;
	}
	public void run(){
		myarry.remove(1);
	}

	
}
}
public class MultithreadExmaple2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	Thread1 t1 = new Thread1("bhuvan");
	Thread thread = new Thread(t1);
	thread.start();
	System.out.println(t1.myarry);

	
	}

}
