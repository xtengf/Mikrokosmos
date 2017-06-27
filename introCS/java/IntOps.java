public class IntOps
{
    public static void main(String[] args)
    {
        int a = Integer.parseInt(args[1]);
        int b = Integer.parseInt(args[0]);
        
        int p = a * b;
        
        System.out.println(a + " * " + b + " = " + p);
    }
}