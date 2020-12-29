
class newThread implements Runnable{
	Thread t;
	newThread(){
		t= new Thread(this,"Demo thread");
		System.out.println("chield thread" + t);
		t.start();
	}
public void run(){
	try{
		for ( int i=0;i<5;i++){
			System.out.println("Chield Thread:" +i);
			Thread.sleep(500);
				}
	}catch ( Exception e){
		System.out.println("exceptoin raised");
	}
	System.out.println("exiting child thread");
}
}

public class Runnable_Example {

	public static void main(String[] args) {
	new newThread();

	try{
		for(int i=0;i<5;i++){
			System.out.println("Main thread:" + i);
			Thread.sleep(1500);
		}
		
	     }catch (Exception e){
			System.out.println("mian exception");
			
		}
System.out.println("Main Thread exiting");	
	}

}
