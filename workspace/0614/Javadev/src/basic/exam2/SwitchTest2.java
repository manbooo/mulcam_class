package basic.exam2;

import java.util.Scanner;

public class SwitchTest2 {
	public static void main(String[] args) {
		
		String[] caption = {"Scissors", "Rock", "Paper"};
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("Input Number(1.Scissors 2.Rock 3.Paper) : ");
		int user = sc.nextInt();
		int com = (int)(Math.random() * 3) + 1;
		
		int ret = user -com;
		
		System.out.println("You : " + caption[user - 1]);
		System.out.println("Com : " + caption[com - 1]);
		
		if(ret == 0) {
			System.out.println("Draw");
		}
		else if(ret == 1 || ret == -2) {
			System.out.println("You Win");
		}
		if(ret == -1 || ret == 2) {
			System.out.println("You Lose");
		}
		
		
		if ((user == 1 && com == 3) || (user == 2 && com == 1) || (user == 3 && com == 2)) {
			System.out.println("You Win");
		}
		else if(user == com) {
			System.out.println("Draw");
		}
		else {
			System.err.println("You lose");
		}
		
		switch ((user - com + 3) % 3) {
		case 1:
			System.out.println("You Win");
			break;
			
		case 2:
			System.out.println("You lose");
			break;
		
		case 0:
			System.out.println("Draw");
			break;

		default:
			break;
		}
		
//		switch (user) {
//		case 1:
//			if(com == 1) {
//				System.out.println("Draw");
//			}
//			else if(com == 2) {
//				System.out.println("Lose");
//			}
//			else {
//				System.out.println("Win");
//			}
//			break;
//			
//		case 2:
//			if(com == 1) {
//				System.out.println("Win");
//			}
//			else if(com == 2) {
//				System.out.println("Draw");
//			}
//			else {
//				System.out.println("Lose");
//			}
//			break;
//			
//		case 3:
//			if(com == 1) {
//				System.out.println("Lose");
//			}
//			else if(com == 2) {
//				System.out.println("Win");
//			}
//			else {
//				System.out.println("Draw");
//			}
//			break;
//
//		default:
//			System.out.println("Error");
//			break;
//		}

	} //end main
} //end class