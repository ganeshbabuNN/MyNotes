
public class ArrayPassing {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		generateArray();
	
	}
	public static void generateArray(){
		int[] arrayint = new int[20];
		for(int i = 0; i < arrayint.length; i++){
			arrayint[i] = i;
		
		}
		
	int rarray[] =  returnArry(arrayint);	
	System.out.println("Minval is " + rarray[0] + "//t" + "Max val is " + rarray[1]);
	
	}
	
	public static int[] returnArry(int[] inarry){
		int[] maxmin = new int[2];
		maxmin[0] = Integer.MAX_VALUE;
		maxmin[1] = Integer.MIN_VALUE;
		
		for (int i = 0 ;i < inarry.length; i ++ ){
			maxmin[0] = Math.min(maxmin[0], inarry[i]);
			maxmin[1] = Math.max(maxmin[1], inarry[i]);
				}
		return(maxmin);
	}
}


