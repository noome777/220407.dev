package com.kh.main;

public class Charmander {
	
	//생성자
	public Charmander(int level, char type) {
		this.level = level;
		this.type = type;
	}
	
	//데이터
	private final String name ="파이리";
	private int level;
	private char type; //E,W,F 타입(전기,물,불)
	
	
	public int getLevel() {
		return this.level;
	}
	
	public void setLevel(int level) {
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
	
	
	
	//전광석화
	public void speedAttack() {
		System.out.println("전광석화 !!!");
	}
		
	//불꽃세례
	public void fire() {
		System.out.println("불꽃세례 !!!");
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
