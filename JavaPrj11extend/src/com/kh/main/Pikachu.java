package com.kh.main;

public class Pikachu {

	//생성자가 아무것도 없으면. JVM(컴퓨터)이 기본생성자를 만들어줌
	
	//생성자0
//	public Pikachu() {
//		
//	}
	
	
	
	//생성자1
	public Pikachu(int x, char b) {
		this.level = x;
		this.type = b;
	} //객체를 create해주는 역할과 동시에 0이었던 레벨을 1로, null인 타입을 E로 변경해주는 것이다. 
	
	
	//생성자2
//	public Pikachu(int num, char ch, String msg) {
//		this.level = num;
//		this.type = ch;
//		System.out.println(msg);
//		
//	}
	
	
	//데이터
	private final String name = "피카츄";
	private int level; //필드
	private char type; //E,W,F 타입(전기,물,불)
	
	
	//private은 무단 수정을 못하므로 편법으로 레벨을 가져오는 public 메소드를 만들어서 level을 수정.(외부에서 접근하지 못하도록 private으로 만들어 주는 것이 캡슐화이다.)
	public int getLevel() {  //필드에 있는 레벨을 가져온다 get
		return this.level;
	}
	 
	public void setLevel(int level) {  //필드에 있는 레벨을 수정한다.(무단수정) set
		this.level =level;
	}
	
	public char getType() {
		return this.type;
	}
	
	public void setType(char type) {
		this.type = type;
	}
	
	
	
	//몸통박치기
	public void bodyAttack() {
		System.out.println(name + " 몸통 박치기 !!!");
	}
	
	//백만볼트
	public void millionVolt() {
		System.out.println("백만볼트 ~~~~ !!!");	
	}
	
	//썬더볼트
	public void thunderVolt() {
		System.out.println("썬더볼트 ~~~~ !!!");
	}
	
	
}
