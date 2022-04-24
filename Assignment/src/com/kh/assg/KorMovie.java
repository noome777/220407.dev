package com.kh.assg;

import java.util.Random;
import java.util.Scanner;

import main.MovieGameMain;

public class KorMovie {

	Scanner sc = new Scanner(System.in);
	
	public void showKor() {//극한직업 실미도 왕의남자 청년경찰 해운대 엽기적인그녀 암살
		
		//랜덤으로 한 문제 뽑기
		//if 랜덤값이 초성문제면 consonant를 else if 랜덤값이 배우문제면 actor를, else 랜덤값이 배우면 script를 추출한다.
		
		
		boolean isCorrect = false;
		int cnt = 0;
		
		
		
		String [] questions = {"다음 초성에 맞는 영화는 무엇일까요 ??", "다음 배우들이 나오는 영화는 무엇일까요 ??", "다음 명대사가 나오는 영화는 무엇일까요 ??"};
		String [] consonant = {"ㄱㅎㅈㅇ", "ㅅㅁㄷ", "ㅇㅇ ㄴㅈ", "ㅊㄴㄱㅊ", "ㅎㅇㄷ", "ㅇㄱㅈㅇ ㄱㄴ", "ㅇㅅ"};
		String [] actor = {"이하늬 신하균", "설경구 안성기", "감우성 이준기", "박서준 강하늘", "설경구 하지원", "차태현 전지현", "이정재 하정우"};
		String [] script = {"응 ~ 나 화교 출신", "날 쏘고 가라,,,","나는 두말 할 거 없이 광대, 광대지","졸라 과학수사!!","마!! 빨리 데리러 온나!!!", 
				"견우야 ~~ 미안해 ~","나 김원봉이요"};
		
		Random rand1 = new Random();
		Random rand2 = new Random();
		Random rand3 = new Random();
		Random rand4 = new Random();
		
		
		if(questions[rand1.nextInt(3)] == questions[0] ) {
		
		System.out.println(questions[0]);
		System.out.println(consonant[rand2.nextInt(7)]);
		
		} else if(questions[rand1.nextInt(3)] == questions[1] ) {
			System.out.println(questions[1]);
			System.out.println(actor[rand3.nextInt(7)]);
		} else {
			System.out.println(questions[2]);
			System.out.println(script[rand4.nextInt(7)]);
		}
		
		
		
		
		
		while(true) {
		
		
			String title = this.sc.nextLine();
			cnt += 1;
			
			switch (title) {
			
			case "극한직업":
				if(title == consonant[0] && title == actor[0] && title == script[0] )
				System.out.println("극한직업 정답입니다.");
				isCorrect = true;
				break;
				
			case "실미도":
				if(title == consonant[1] && title == actor[1] && title == script[1] )
				System.out.println("실미도 정답입니다.");
				isCorrect = true;
				break;
				
			case "왕의 남자":
				if(title == consonant[2] && title == actor[2] && title == script[2] )
				System.out.println("왕의 남자 정답입니다.");
				isCorrect = true;
				break;
				
			case "청년경찰":
				if(title == consonant[3] && title == actor[3] && title ==  script[3] )
				System.out.println("청년 경찰 정답입니다.");
				isCorrect = true;
				break;
				
			case "해운대": 
				if(title == consonant[4] && title == actor[4] && title == script[4] )
				System.out.println("해운대 정답입니다.");
				isCorrect = true;
				break;
				
			case "엽기적인 그녀":
				if(title == consonant[5] && title == actor[5] && title == script[5] )
				System.out.println("엽기적인 그녀 정답입니다.");
				isCorrect = true;
				break;
				
			case "암살":
				if(title == consonant[6] && title == actor[6] && title == script[6])
				System.out.println("암살 정답입니다.");
				isCorrect = true;
				break;
				
			default :
				System.out.println("다시 시도하세욧.");
				isCorrect =false;
				break;
			}
		
			
		
			if(isCorrect)
				break;
		}
			
		
		System.out.println(cnt+" 번만에 성공하셨습니다.\n");
		
		
	}
		
	
		public void more() {
			System.out.println("게임을 더 하시겠습니까? (Y/N)");
			String answer = sc.nextLine();
			
			MovieGameMain.finish = answer.equals("y") || answer.equals("Y")? false : true;
			
			}
		

	
	
}
