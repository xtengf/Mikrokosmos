
public class PrintLogarithm1 {
    
    public static void printLogarithm(double x) {
        if (x <= 0.0) {
            System.err.println("Error: x must be positive.");
            return;
        }
        
        double result = Math.log(x);
        System.out.println("The log of x is " + result);
    }
    
    public static void main(String[] args) {
        printLogarithm(34);
        
    }
}