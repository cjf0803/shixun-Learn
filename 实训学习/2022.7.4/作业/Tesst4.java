import java.util.Scanner;

public class Tesst4 {
   public static void main(String[] args) {
       Scanner sc =new Scanner(System.in);
       System.out.println("请输入一个年份");
       int year=sc.nextInt();
       cjf(year);
   }
    public static void cjf(int year){
        if(year%100==0){
            if (year%400==0) {
                System.out.println(year+" 年是闰年");
                
            }else{
                System.out.println(year+" 年是平年");
            }
        }
        else if(year%4==0){
            System.out.println(year+" 年是闰年");
        }
        else{
            System.out.println(year+" 年是平年");
        }
    }
}
