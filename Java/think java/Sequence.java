
public class Sequence {
    
    public static void sequence(int n) {
        while (n != 1) {
            System.out.println(n);
            if (n % 2 == 0) {          // n is even
                n = n / 2;
            } else {                   // n is old
                n = n * 3 + 1;
            }
        }
    }
     
    public static void main(String[] args) {
        sequence(3);
    }
}