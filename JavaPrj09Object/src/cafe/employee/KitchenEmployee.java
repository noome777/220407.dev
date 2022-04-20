package cafe.employee;

public class KitchenEmployee {
	
	//주방직원
	
	/*/
	 * -닉네임
	 * -시급: 만원
	 * -음료 제조 기능
	 * -음료 건내는 기능
	 * 
	 * 
	 */
	public String nick;
	public int money;
	
	
	public void cook() {
		System.out.println("음료제조 ~~~");
	}
	public void complete() {
		System.out.println("음료완성 ~~~");
	}
	
	
	
}
