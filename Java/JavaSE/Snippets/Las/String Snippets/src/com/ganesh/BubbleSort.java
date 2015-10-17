package com.ganesh;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class BubbleSort 
{
	public static void main(String[] args)throws IOException {
		
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		// stored in students subjects
		System.out.print("Enter the Subject: ");
		int n = Integer.parseInt(br.readLine());
		
		int mark[] = new int[n];
		for(int i = 0 ;i <n; i++)
		{
			System.out.print("Enter the Marks: ");
			mark[i] = Integer.parseInt(br.readLine());
		}
		// bubble sort method
		int limit = n-1 ;
		boolean flag = false;
		int temp;
		
		for(int i = 0; i <limit; i++)
		{
			System.out.println();
			for(int j = 0; j < limit-i;j++)// 2
			{
				if(mark[j] > mark[j+1])
				{
					temp = mark[j];// 2
					mark[j] = mark[j+1]; //1
					mark[j+1] = temp;  //display 1
					flag = true;
				}		
			}
			if(flag = false)break;
			else flag = false;			
		}
		System.out.println("the sorted arrays is : ");
		for(int i = 0 ; i <n; i++)
			System.out.println(mark[i]);				
	}
}
