package cafe.main;

import cafe.employee.CounterEmployee;
import cafe.employee.KitchenEmployee;

public class Run {

	public static void main(String[] args) {
		
		//객체의 메소드 사용
		//객체의 데이터 (변수) 접근 가능

		
		System.out.println("cafe open ~~~");
		System.out.println("======================");
		
		CounterEmployee ce = new CounterEmployee();
		KitchenEmployee ke = new KitchenEmployee();
		
		ce.order();
		ce.calc();
		ke.cook();
		ke.complete();
		
		ce.nick = "홍길동";
		ke.nick = "베철수";
				
		System.out.println("카운터 직원 닉네임 : " + ce.nick);
		System.out.println("주방 직원 닉네임 : " + ke.nick);
		
		
		//기본형 자료형의 경우 기본값이 false ,0 ,0.0f 등등이 있지만 참조형 변수는 기본값이 null(0은 휴지심만 남아있는 것, null 휴지심조차 없이 아무것도 없는 상태이다.)
	}

}
