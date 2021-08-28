//import java.io.InterruptedException;


public class Thread1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Thread t = new Thread();
		
		System.out.println("Current thread name is" + t.getName());
		System.out.println("Currnet state is " + t.getState());
		System.out.println("Current priority is" + t.getPriority());
		System.out.println("Class is " + t.getClass());
		
		t.setName("bhuvan");
		System.out.println("After changing name " + t.getName());
		
		try{
			for ( int i = 0; i < 10 ; i ++){
				System.out.println(i);
				Thread.sleep(1000);
				if ( t.isAlive()){
					System.out.println("Currnet state is sleep " + t.getState());
				}
				else{
					System.out.println("Currnet state is " + t.getState());
				}
						
			}
		}catch ( InterruptedException e){
			System.out.println("e" + e);
		}
		
	}

}
