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
		System.out.println("�̾Ƹ�");
	}
	
	
	public void multiple(int x) {
		System.out.println(x * 2);
	}
	
	public String getName() {
		return "�̾Ƹ�";
	}
	
	public int plus(int x , int y) {
		return x+y;
		
	}
	
}

