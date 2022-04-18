package practice;

public class Practice {
	public void test() {
		System.out.println("start");
		
		printHelloWorld();
		printMyName();
		multiple(5);
		System.out.println(getName());
		System.out.println(plus(3,5));
		
		System.out.println("end");
	}
	
	
	public void printHelloWorld() {
		System.out.println("hello world");
	}

	public void printMyName() {
		System.out.println("이아름");
	}
	
	
	public void multiple(int x) {
		System.out.println(x * 2);
	}
	
	public String getName() {
		return "이아름";
	}
	
	public int plus(int x , int y) {
		return x+y;
		
	}
	
}

