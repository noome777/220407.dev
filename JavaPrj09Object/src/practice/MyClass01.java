package practice;

public class MyClass01 {
	
	//객체 생성
	//객체의 메소드 호출
	public String name;
	public int age;
	
	public void introduce() {
		String localVarName = "메소드 안에ㅔ서 만든 이름 ㅎㅋ";
		System.out.println("안녕 나는 MyClss01 타입이야");
		System.out.println("내 이름은 "+ localVarName);
		System.out.println("내 나이는 "+ age);
	}
	
	public void myMethod01() {
		System.out.println("MyClass01의 mymethod01 호출됨 ...");
		
	}
	
	
	
	public void myMethod02() {
		System.out.println("MyClass의 myMethod02 호출됨 ...");
		
	}
}
