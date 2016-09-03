public class LogE {
    
    public static void table(int n) {
        int i = 1;
        while (i < 10) {
            double x = (double) i;
            System.out.println(x + "    " + Math.log(x));
            i = i + 1;
        }
    }
    
    public static void main(String[] args) {
        table(9);
    }
}