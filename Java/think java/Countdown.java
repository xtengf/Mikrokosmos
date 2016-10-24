import java.util.Scanner;

public class Countdown {
    
    public static void countdown(int n) {
        while (n > 0) {
            System.out.println(n);
            n = n - 1;
        }
        System.out.println("Blastoff!");
    }
    
    public static void main(String[] args) {
        int num;
        System.out.print("Give me an int: ");
        Scanner in = new Scanner(System.in);
        num = in.nextInt();
        countdown(num);
    }
}