public class EncapsulationTriangular {
    
    public static void printRow(int n, int cols) {
        
        int i = 1;
        while (i <= cols) {
            System.out.printf("%4d", n * i);
            i = i + 1;
        }
        System.out.println();
    }
    
    public static void printTable(int rows) {
        int i = 1;
        while (i <= rows) {
            printRow(i, i);
            i = i + 1;
        }
    }
    
    public static void main(String[] args) {
        printTable(9);
    }
}