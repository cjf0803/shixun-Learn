import java.util.Scanner;

public class Test2 {
     public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
		String shuru = sc.next();
		String hebing ="";
		
		for(int i=shuru.length()-1; i>=0; i--) {
			//System.out.print(fanzhuan.charAt(i));
			hebing = hebing + shuru.charAt(i);//将数字拆开，重新组合形成一个字符串
		}
		int newShu = Integer.parseInt(hebing);//将新数转回int类型
		System.out.print(newShu);

    }
}
