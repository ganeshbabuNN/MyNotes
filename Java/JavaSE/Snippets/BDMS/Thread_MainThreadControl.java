
public class Thread_MainThreadControl {

	public static void main(String[] args) {
		
		Thread t = Thread.currentThread();
		//change thread name(
		System.out.println("Current thread name " + t.getName());
		
		t.setName("Bhuvan");
		
		System.out.println("After changing name" + t.getName());
		
		try{
			for(int i =0 ;i < 10 ; i++){
				System.out.println(i);
				t.sleep(100);
			}
		}catch(InterruptedException e){
			System.out.println("Exception is " + e);
		}
		
	}

}
