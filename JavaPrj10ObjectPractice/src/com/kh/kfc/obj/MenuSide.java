package com.kh.kfc.obj;

import java.util.Scanner;

import com.kh.kfc.main.Main;

public class MenuSide {
	
	Scanner sc = new Scanner(System.in);
	
	public void showMenuSide() {
		System.out.println("=====»çÀÌµå=====");
		System.out.println("1. °¨ÀÚÆ¢±è (3000¿ø)");
		System.out.println("2. ´ß²®ÁúÆ¢±è (2000¿ø)");
		System.out.println("3. Ä¡Áî½ºÆ½ (1000¿ø)");
		
		int menu = Integer.parseInt(sc.nextLine());
	
		switch(menu) {
		case 1:	 
			Main.total += 3000; 
			Main.menuAll += "°¨ÀÚÆ¢±è";
			System.out.println("°¨ÀÚÆ¢±è (3000¿ø) À» ¼±ÅÃÇÏ¼Ì½À´Ï´Ù.");	
			break;
		case 2:	 
			Main.total += 2000; 
			Main.menuAll += "´ß²®ÁúÆ¢±è";
			System.out.println("´ß²®ÁúÆ¢±è (2000¿ø) À» ¼±ÅÃÇÏ¼Ì½À´Ï´Ù.");
			break;
		case 3:	 
			Main.total += 1000;
			Main.menuAll += "Ä¡Áî½ºÆ½";
			System.out.println("Ä¡Áî½ºÆ½ (1000¿ø) À» ¼±ÅÃÇÏ¼Ì½À´Ï´Ù.");	
			break;
		default : 
		System.out.println("±×·± »çÀÌµå ¾øÀ½");
	
		}
		
		
	}

}
