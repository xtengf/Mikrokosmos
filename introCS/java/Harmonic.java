public class Harmonic
{
    public static void main(String[] args) 
    { 
        int n = Integer.parseInt(args[0]);
        double sum = 0.0;
        
        int i = 1;
        while (i <= n)
        {
            sum += 1.0 / i;
            i++;
        }
        // for (int i = 1; i <= n; i++)
        // {
        //     sum += 1.0/i;
        // }
        System.out.println(sum);
    }
}