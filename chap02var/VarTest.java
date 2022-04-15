package chap02var;

public class VarTest {
	
	/*변수 명명 규칙
	 * - 클래스 이름은 대문자로 시작
	 * - 메소드 이름, 변수명은 소문자로 시작
	 * - 띄어쓰기가 있는 여러 단어의 경우, 띄어쓰기 대신 붙여쓰고 다음단어의 시작을 대문자로 변경
	 * - 상수변수 이름은 모두 대문자로 작성 ex) PI
	 * - 상수변수 이름이 여러개의 단어인 경우, '_'를 사용 ex) MAX_SIZE
	 * 
	 * -PascalCase
	 * -camelCase
	 */
	
	
	
	public void test() {
		int x = 10;
		System.out.println(x);
		
	}
	
	public void test2() {
		
		byte b = 127;
		short s = 1;
		int i = 10;
		long l = 999;
		System.out.println("byte b : "+ b);
		System.out.println("short s : "+ s);
		System.out.println("int t : "+ i);
		System.out.println("long l : "+ l);
		
	}	
	
	public void test3() {
		
		float f = 3.14f;
		double d = 1.23456678;
		System.out.println("float f :" + f);
		System.out.println("double d :" +d);
		
	}
	
	public void test4() {
		
		boolean b = true;
		System.out.println(b);
		
	}
	
	public void test5() {
		
		char ch = 'A';
		System.out.println((int)ch);
		
	}
	
	public void test6() {
		
		String str = "ABCDE";
		System.out.println(str);
		
	}
	
	public void test7() {
		final double PI = 3.14;
		
		
	}
	
	
	
	
}
	
	
	
