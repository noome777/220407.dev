package cafe.main;

import cafe.employee.CounterEmployee;
import cafe.employee.KitchenEmployee;

public class Run {

	public static void main(String[] args) {
		
		//��ü�� �޼ҵ� ���
		//��ü�� ������ (����) ���� ����

		
		System.out.println("cafe open ~~~");
		System.out.println("======================");
		
		CounterEmployee ce = new CounterEmployee();
		KitchenEmployee ke = new KitchenEmployee();
		
		ce.order();
		ce.calc();
		ke.cook();
		ke.complete();
		
		ce.nick = "ȫ�浿";
		ke.nick = "��ö��";
				
		System.out.println("ī���� ���� �г��� : " + ce.nick);
		System.out.println("�ֹ� ���� �г��� : " + ke.nick);
		
		
		//�⺻�� �ڷ����� ��� �⺻���� false ,0 ,0.0f ����� ������ ������ ������ �⺻���� null(0�� �����ɸ� �����ִ� ��, null ���������� ���� �ƹ��͵� ���� �����̴�.)
	}

}
