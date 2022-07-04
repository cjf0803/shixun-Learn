
public class test1 {
    public static void main(String[] args) {
        // System.out.println("Hello World!");
        search();
    }

    public  static void search() {
        int i = 200;
        outter: while (i >= 200) {
            innner: for (int j = 2; j < i; j++) {
                if (i % j == 0) {

                    break innner;
                }
                if (j == i - 1) {
                    System.out.println(i);
                    break outter;
                }
            }
            i++;
        }
    }
}
