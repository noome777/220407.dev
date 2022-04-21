package com.kh.overload.test;

public class Test {
	//data
	public String name;
	
	/*/
	 * 생성자
	 * [접근제한자] 클래스명(매개변수는 0개 이상){객체가 생성되늰 순간 실행하고 싶은 내용}
	 * 
	 *  객체를 생성하려면 생성자를 호출해야 한다. 어떤 것이 객체를 만드는 것인가? 생성자 !!
	 */
	

	//기본생성자(==호출자임, 객체를 만들기만 하고 호출을 안하면 생성이 안됨.)
	public Test() { // 이 생성자는 new Test();를 호출하는 것임.
		System.out.println("기본 생성자 호출됨 ==========");
		this.name = "ㅇㅇㅇ";
		System.out.println(this.name);
		
	}
	
	//생성자 오버로딩 (매개변수가 있는 생성자)  자바에서는 클래스 이름이 같아도 매개변수가 다르면 에러가 나지 않는다 --> 이것이 생성자 오버로딩임 !
	public Test(String s) {
		System.out.println("오버로딩된 생성자(문자열 하나 전달받는 생성자) 호출됨");
		System.out.println("생성자가 전달받은 s : "+ s);
		this.name = s;
		
	}
	
	
	
}
