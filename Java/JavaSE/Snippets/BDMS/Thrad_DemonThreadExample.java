class DThread extends Thread{
		public void run(){
			for(;;){
				System.out.println("Demon Thread Running");
				try{
					sleep(1000);
					
				}catch(InterruptedException e){
					e.printStackTrace();
				}
			}
		}
}
public class Thrad_DemonThreadExample {

	public static void main(String[] args) throws InterruptedException {
		System.out.println("Starting of Dthread");
		DThread dt = new DThread();
		dt.setDaemon(true);
		dt.start();
		dt.join();
		System.out.println("Ending of DTHREAD");
	}

}
