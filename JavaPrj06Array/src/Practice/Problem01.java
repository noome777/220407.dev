package Practice;

import java.util.Scanner;

public class Problem01 {

	public static void main(String[] args) {

		System.out.println("숫자 개수를 입력해주세요");
		
		Scanner sc = new Scanner(System.in);
		int k = sc.nextInt();
		int [] arr = new int[k];
		
		
		for(int i= 0; i < arr.length; i++) {
			arr[i] = sc.nextInt();
		}
			
		
		for(int i =0; i < 2; i++) {
			for(int j = 0; j < arr.length; j++){
			System.out.println(arr[j]);
		}
		
	}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
