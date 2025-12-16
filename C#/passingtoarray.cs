using System;  
public class ArrayExample  
{  
    static void printMax(int[] arr)  
    {  
        int max = arr[0];  
        for (int i = 1; i < arr.Length; i++)  
        {  
            if (max < arr[i])  
            {  
                max = arr[i];  
            }  
        }  
        Console.WriteLine("Maximum element is: " + max);  
    }  
    public static void Main(string[] args)  
    {  
        int[] arr1 = { 25, 10, 20, 15, 40, 50 };  
        int[] arr2 = { 12, 23, 64, 11, 54 };  
  
        printMax(arr1);//passing array to function  
        printMax(arr2);  
    }  
}  