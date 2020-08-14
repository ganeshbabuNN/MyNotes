using System;  
public class ContinueExample  
    {  
      public static void Main(string[] args)  
      {  
          for(int i=1;i<=3;i++){      
                    for(int j=1;j<=3;j++){      
                        if(i==2&&j==2){      
                            continue;      
                        }      
                        Console.WriteLine(i+" "+j);      
                    }      
            }      
      }  
   }  