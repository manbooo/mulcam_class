package basic.exam2;

import java.util.Scanner;

public class Baseball {
	public static void main(String[] args) {

		int[] com = new int[3];
		int[] user = new int[3];
		int s, b;
		int cnt = 0;

		Scanner sc = new Scanner(System.in);

		do {
			com[0] = (int)(Math.random() * 10);
			com[1] = (int)(Math.random() * 10);
			com[2] = (int)(Math.random() * 10);
		} while (com[0] == com[1] || com[0] == com[2] || com[1] == com[2]);

		System.out.println(com[0]);
		System.out.println(com[1]);
		System.out.println(com[2]);
		
		System.out.println("Start Game!!!");
		
		do {
			s = 0;
			b = 0;
			
			System.out.println("Input Number(0 ~ 9) : ");
			System.out.println("ex) 1 2 3");
			System.out.print(">> ");
			
			user[0] = sc.nextInt();
			user[1] = sc.nextInt();
			user[2] = sc.nextInt();
			
			if(user[0] == com[0]) s++;
			else if(user[0] == com[1] || user[0] == com[2]) b++;
			
			if(user[1] == com[1]) s++;
			else if(user[1] == com[0] || user[1] == com[2]) b++;
			
			if(user[2] == com[2]) s++;
			else if(user[2] == com[0] || user[2] == com[1]) b++;
			
			System.out.println("[ " + s + "S " + b+ "B ]");
			
			cnt++;
			
		} while (s < 3);

		System.out.println("Congratuation!! You hit it " + cnt + "time(s)");
		System.out.println("End Game!!");


	} //end main
} //end main