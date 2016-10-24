import java.util.Scanner;
    
public class PrintLogarithm {
    
    public static void printLogarithm(double x) {
        if (x <= 0.0) {
            System.err.println("Error: x must be positive.");
            return;
        }
        
        double result = Math.log(x);
        System.out.println("The log of x is " + result);
    }
    
    public static void main(String[] args) {
        double num;
        Scanner in = new Scanner(System.in);
        System.out.print("Type a numbers: "); // note the space
        num = in.nextDouble();
        printLogarithm(num);
    }
}