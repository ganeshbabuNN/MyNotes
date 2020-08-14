using System;  
public class WhileExample  
    {  
      public static void Main(string[] args)  
      {  
          int i=1;    
          while(i<=3)   
          {  
              int j = 1;  
              while (j <= 3)  
              {  
                  Console.WriteLine(i+" "+j);  
                  j++;  
              }  
              i++;  
          }    
     }  
   }  