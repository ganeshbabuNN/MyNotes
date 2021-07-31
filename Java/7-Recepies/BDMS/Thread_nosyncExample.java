class  Table{
	synchronized public void print(int n){
		for(int i = 0;i < 5 ; i++){
			System.out.println(n * i);
			try{
				Thread.sleep(1000);
			}catch(InterruptedException e){
				e.printStackTrace();
			}
		}
	}
}
class Mythread1 extends Thread{
	Table t;
	public Mythread1(Table t){
		this.t = t;
	}
	public void run(){
		t.print(2);
	}
}

class MyThread2 extends Thread{
	Table t;
	public MyThread2(Table t){
		this.t = t;
	}
	public void run(){
		t.print(10);
	}
}

public class Thread_nosyncExample {

	public static void main(String[] args) {
		Table t = new Table();
		Mythread1 t1 = new Mythread1(t);
		MyThread2 t2 = new MyThread2(t);
		t1.start();t2.start();

	}

}
