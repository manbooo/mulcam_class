package _0718.ibatis;

import java.sql.SQLException;
import java.util.Scanner;

import com.ibatis.sqlmap.client.SqlMapClient;

public class AccountTest {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		while(true) {
			
			try {
				int menu = showMenu(sc);
				
				switch (menu) {
				case 1:
					System.out.println("Insert Member");
					break;
				case 2:
					System.out.println("List Member");
					break;
				case 0:
					System.out.println("Exit");
					System.exit(1);
					break;
				default:
					System.out.println("Exception : Menu is not exit");
					break;
				}
				
			} catch (Exception e) {
				System.out.println("Exception : Input is Wrong");
			}
			
			
		}
		
	} //end main
	
	private static void insertAccount(Scanner sc) throws SQLException {
		AccountVO accountVO = new AccountVO();
		System.out.println("\n1. 고객 입력");
		System.out.print("firstName : ");
		accountVO.setFirstName(sc.nextLine());
		
		System.out.print("lastName : ");
		accountVO.setLastName(sc.nextLine());
		
		System.out.print("emailAddress : ");
		accountVO.setEmailAddress(sc.nextLine());
		SqlMapClient sqlMap = QueryHandler.getInstance();
		sqlMap.insert("insertAccount", accountVO);
	}

	private static int showMenu(Scanner sc) throws Exception {

		System.out.println("******** MENU ********");
		System.out.println("1. Insert Member");
		System.out.println("2. List Member");
		System.out.println("0.	Exit");
		System.out.println("**********************");
		System.out.print(" > ");
		
		return Integer.parseInt(sc.nextLine().trim());	
	} //end showMenu
} //end class
