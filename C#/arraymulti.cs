using System;  
public class MultiArrayExample  
{  
    public static void Main(string[] args)  
    {  
        int[,] arr=new int[3,3];//declaration of 2D array  
        arr[0,1]=10;//initialization  
        arr[1,2]=20;  
        arr[2,0]=30;  
  
        //traversal  
        for(int i=0;i<3;i++){  
            for(int j=0;j<3;j++){  
                Console.Write(arr[i,j]+" ");  
            }  
            Console.WriteLine();//new line at each row  
        }  
    }  
}  