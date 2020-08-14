using System;  
public class StringExample  
{  
    public static void Main(string[] args)  
    {  
        string s1 = "hello";  
  
        char[] ch = { 'c', 's', 'h', 'a', 'r', 'p' };  
        string s2 = new string(ch);  
         
        Console.WriteLine(s1);  
        Console.WriteLine(s2);  
    }  
}  