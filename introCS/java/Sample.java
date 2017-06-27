public class Sample
{
    public static void main(String[] args) 
    {
        int m = Integer.parseInt(args[0]);
        int n = Integer.parseInt(args[1]);
        int[] perm = new int[n];
        
        // Initialize perm[].
        for (int j = 0; j < n; j++)
            perm[j] = j;
            
        //System.out.println(perm);
        
        // Take sample.
        for (int i = 0; i < m; i++)
        {
            int r = i + (int) (Math.random() * (n-i));
            int t = perm[r];
            perm[r] = perm[i];
            perm[i] = t;
        }
        
        // Print sample.
        for (int i = 0; i < m; i++)
            System.out.print(perm[i] + " ");
        System.out.println();
    }
}