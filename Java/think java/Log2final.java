public class Log2final {
    
    public static void table(int n) {
        final double LOG2 = Math.log(2);
        int i = 1;
        while (i < 10) {
            double x = (double) i;
            System.out.println(x + "    " + Math.log(x) / LOG2);
            i = i + 1;
        }
    }
    
    public static void main(String[] args) {
        table(9);
    }
}