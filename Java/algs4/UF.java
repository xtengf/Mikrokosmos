
/**
 * Write a description of class UF here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */

import algs4.StdIn;
import algs4.StdOut;

public class UF
{
    // instance variables - replace the example below with your own
    private int[] id;       // access to component id (site indexed)
    private int count;      // number of components

    /**
     * Constructor for objects of class UF
     */
    public UF(int N)
    {
        // initialise instance variables
        count = N;
        id = new int[N];
        for (int i = 0; i < N; i++)
            id[i] = i;
    }
    
    public int count()
    {   return count;   }
    
    public boolean connected(int p, int q)
    {   return find(p) == find(q);  }
    
    public int find(int p)
    {   return id[p];   }
    
    public void union(int p, int q)
    {
        // Put p and q into the same component.
        int pID = find(p);
        int qID = find(q);
        
        // Nothing to do if p and q are already in the same component.
        if (pID == qID) return;
        
        // Rename p's component to q's name.
        for (int i = 0; i < id.length; i++)
            if (id[i] == pID) id[i] = qID;
        count--;
    }
    
    

    /**
     * An example of a method - replace this comment with your own
     * 
     * @param  y   a sample parameter for a method
     * @return     the sum of x and y 
     */
    public static void main(String[] args)
    {
        // Slove dynamic connectivity problem on StdIn.
        int N = StdIn.readInt();    // Read number of sites.
        UF uf = new UF(N);          // Initialize N components.
        while (!StdIn.isEmpty())
        {
            int p = StdIn.readInt();
            int q = StdIn.readInt();
            if (uf.connected(p, q)) continue;
            uf.union(p, q);
            StdOut.println(p + " " + q);
        }
        StdOut.println(uf.count() + " components");
    }
}