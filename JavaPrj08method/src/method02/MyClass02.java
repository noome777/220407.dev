package method02;

public class MyClass02 {
	
//	 �޼ҵ� (method)
	 /*
	  * �ۼ����
	  * ���������� ����Ÿ�� �޼ҵ��(�Ű�����) {������ ����, ���ϰ��� �ִٸ� return ��}
	  * public  int   plus(number)   {number++; return number;}
	  * 
	  * -���ϰ��� ������? void��� �ۼ�
	  * -�Ű�����(()���� ��)�� �� �޾Ƶ� �ǰ�, �������� �޾Ƶ���
	  * -�Ű������� ������ ������ ���ϵ� ������? ���� ������ ������ �ϳ�
	  * 
	  * �޼ҵ� ����
	  * �޼ҵ� ���, �޼ҵ� �ٵ�
	  * -�޼ҵ��� ��带 ����, �Է°��� ���� �� ��ȯ���� ������ �� �� �ִ�.
	  */
	
	
	
	
	
	public void test() {
		System.out.println("�׽�Ʈ �޼��� ����");
//		myMethod01();
//		plusTen(10);
//		System.out.println(getAge());
		System.out.println(plusOne(10));
		//plusOne �޼ҵ带 ȣ���Ѵ�. (���� 10�� �������ٰ�)
		//ȣ���� ���� ���Ϲ��� ���� ����غ���
		System.out.println("�׽�Ʈ �޼��� ����");
	}

	//�Ű������� ����, ���ϰ��� ���� �޼ҵ�
	public void myMethod01() {
		System.out.println("�ȳ� ���� ��¹��̾� ����");
	}
	
	//�Ű������� �ְ�, ���ϰ��� ���� �޼ҵ�(���� x�ϳ� ���޹޾Ƽ�, �� ���ڿ��ٰ� +10 �ؼ�, ����ϴ� �޼ҵ�)
	public void plusTen(int x) {
		x = x+10;
		System.out.println(x);
	}
	
	
	//���� ���̸� ����(��ȯ�ϴ�) �޼ҵ� �ۼ�
	public int getAge() {
		System.out.println("getAge �޼��� ȣ���");
		return 20;
	}
	
	//���� �ϳ��� �Է¹ް�, +1 �� ���� ���� �ϴ� �޼ҵ�
	//�Է¹޴� ��(�Ű�����)�� �ְ�, ���� ��(==��ȯ�ϴ� ==return �ϴ�)�� �ִ� �޼ҵ�
	public int plusOne(int x) {
		x++;
		return x;
		
	}
	//�������� ����(����)�� �Է¹ް�, ���� ���̸� �����ϴ� �޼ҵ�
	//�Ű�����: ������
	//����Ÿ��: �Ǽ��� ������ (float, double)
	//������ ����: �������� �̿��Ͽ� ���ǳ��� ���
	
	public double calcCircle(int r) {
		double result = r * r * 3.14;
		return result;
	}
	
}
