public class Exercise {
    
    public static void zoop() {
        System.out.print("You wugga ");
        baffle();
    }
    
    public static void main(String[] args) {
        System.out.print("No, I ");
        zoop();
        System.out.print("I ");
        baffle();
    }
    

    public static void ping() {
        System.out.println(".");
    }
    
    public static void baffle() {
        System.out.print("wug");
        ping();
    }
    
    
}