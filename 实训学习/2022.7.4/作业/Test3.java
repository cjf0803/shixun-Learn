
import java.util.Arrays;

public class Test3 {
    public static void main(String[] args) {
        array();
    }
    public static void array(){
        int[] a = { 1, 6, 2, 3, 9, 4, 5, 7, 8 };
        // Arrays.sort(a);
        // 冒泡排序
        int temp;
        for (int j = 0; j < a.length; j++) {
        for (int i = 0; i < a.length-j-1; i++) {
            if (a[i] > a[i + 1]) {
                temp = a[i];
                a[i] = a[i + 1];
                a[i + 1] = temp;
            }
        }
        }
        for (int i : a) {
            System.out.print(i);
        }
    }
}
