using System;  
public class BreakExample  
    {  
      public static void Main(string[] args)  
      {  
          for (int i = 1; i <= 10; i++)  
          {  
              if (i == 5)  
              {  
                  break;  
              }  
              Console.WriteLine(i);  
          }  
      }  
   }