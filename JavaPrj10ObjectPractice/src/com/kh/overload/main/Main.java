package com.kh.overload.main;

import com.kh.overload.test.Test;

public class Main {

	public static void main(String[] args) {

		//생성자 호출을 통해서 객체생성. 생성된 객체를 변수에 할당
		Test t = new Test();
//		Test t = new Test("안녕하세여");
		
		
//		System.out.println("t.name: "+ t.name);
	}

}

//메소드 오버로딩 (매개변수를 다르게 하여 메소드를 작성, 같은 이름의 메소드를 여러개 만드는 것)
//생성자 오버로딩 (매개변수를 다르게 하여 생성자를 작성, 같은 이름의 생성자를 여러개 만드는 것)
//단, 이름만 같아야하고 매개변수는 달라야 함.
//리턴타입은 오버로딩과는 상관 x 

//Test t = new Test();
//t.name = "이아름"       
//----->  Test t = new Test("이아름");        이렇게 쓰면 t.name을 뺴먹어서 name값이 null인 상황이 생기지 않음 ,간결해짐