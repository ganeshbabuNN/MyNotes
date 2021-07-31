
public class Thread_Example {

	
	public static void main(String[] args) {
//		Thread b= new Thread();
		Thread t =  Thread.currentThread();
		
		System.out.println("Current Thread is " + t);
		//	t.setName("bhuvan");
		System.out.println("After Name change:" + t);
		t.setPriority(1);
		System.out.println("Priority of Thread is " + t.getPriority());

	try {
		for ( int i = 0; i < 10 ; i++){
			System.out.println(i);
			
			Thread.sleep(1000);
		}
	    }catch (Exception e){
			System.out.println("Exception " + e);
		}
	}
}
