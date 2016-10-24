import java.util.Scanner;

public class Countup {
    public static void countdown(int n) {
        if (n == 0) {
            System.out.println("Blastoff!");
        } else {
            
            countdown(n - 1);
            System.out.println(n);
        }
    }
    
    public static void main(String[] args) {
        int num;
        System.out.print("Give me an int: ");
        Scanner in = new Scanner(System.in);
        num = in.nextInt();
        countdown(num);
    }
}