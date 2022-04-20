package updown.main;

import java.util.Random;
import java.util.Scanner;

public class GameManagerUpDown {
	
	public final String gameName = "업다운";
	
	public void gameStart() {
		System.out.println(gameName + " 게임시작 ~~~");
		
		// 컴퓨터가 랜덤 숫자 하나 생각하게 하고
		// 정수 하나 받고
		// 업다운 얘기해주고
		// 틀리면 다시하게 하고
		// 맞추면 정답입니다 
		
		//랜덤숫자
//		int a = (int) ((Math.random()*100) + 1);
		
		
		int a = new Random().nextInt(50);
//		Random randomObject = new Random();
//		int r = randomObject .nextInt(50);
		
		
		//입력
		Scanner sc = new Scanner(System.in);
		
		//업다운 판단
		while(true) {
			int input = sc.nextInt();
			if(input > a ) {
				System.out.println("다운");
			} else if( input < a) {
				System.out.println("업");
			} else if( input == a ) {
				System.out.println("정답입니다.");
			} else {
				System.out.println("다른 수를 입력해주세요");
			}
		
		
		
		

		
		
		
		
		
		
	}

	
	}
	
}
