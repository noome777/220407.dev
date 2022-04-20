package main;

import practice.MyClass01;

public class Run {

	public static void main(String[] args) {

		System.out.println("Run 클래스의 main 메소드 호출됨...");
		System.out.println("=========================");
		
		//객체 생성(MyClass01 클래스 파일을 이용해서 객체 생셩)
//			MyClass01 mc01 = new MyClass01(); //클래스가 mc01이라는 참조변수의 타입이 될 수 있다. mc01은 main메소드 내부안에 있는 변수이므로 지역변수ok.
			
		//객체의 메소드 호출(MyClss01 클래스 파일의 myMethod01 호출)
//			mc01.myMethod01(); //.은 해당 객체에 접근하기 위함이다. mc01이라는 참조변수를 통해 .객체를 생성하고 그 주소값이 mc01에 들어가서 mc01(리모콘)을 통해 객체 myMethod에 접근하겠다.
//			mc01.myMethod02(); //한 객체를 통해 여러가지 메소드를 호출할 수 있다. (myMethod01, myMethod02```)
//		
		//객체와 인스턴스는 같은 개념이다.
		//객체는 heap메모리에 할당된다.
		/*/
		 * 
		 * <객체지향>
		 * 
		 * 지역변수는 stack에
		 * 인스턴스변수(멤버변수)는 heap에
		 * 클래스변수(static)은 static에
		 * 
		 * 클래스내부 -->멤버변수
		 * 메소드내부 -->지역변수 (메소드 실행시 메모리에 생성되었다가 메모리 종료시에 사라진다.)
		 * 
		 * 
		 */
		
		//객체생성
		MyClass01 mc = new MyClass01();
		mc.age = 20;
		mc.name = "홍길동";
		mc.introduce();
		
		
		
		
		
		
		
	}

}
