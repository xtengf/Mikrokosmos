
public class CountdownEasy {
    
    public static void countdown(int n) {
        while (n > 0) {
            System.out.println(n);
            n = n - 1;
        }
        System.out.println("Blastoff!");
    }
    
    public static void main(String[] args) {
        countdown(9);
    }
}