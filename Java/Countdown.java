import java.util.Scanner;

public class Countdown {
    public static void countdown(int n) {
        if (n == 0) {
            System.out.println("Blastoff!");
        } else {
            System.out.println(n);
            countdown(n - 1);
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