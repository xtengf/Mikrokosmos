import java.util.Arrays;

public class Array
{
    public static void main(String[] args) 
    {
        // double[] a;     // declare the array
        // a = new double[3];      // create the array
        // for (int i = 0; i < 3; i++)     // initialize the array
        //     a[i] = 0.0;
        // double[] a = new double[3];
        // System.out.println(a);
        
        // double[] x = {0.30, 0.60, 0.10};
        // double[] y = {0.40, 0.10, 0.50};
        
        // double sum = 0.0;
        // for (int i = 0; i < 3; i++) sum += x[i]*y[i];
        // System.out.println(sum);
        
        String[] SUITS = { "Clubs", "Diamonds", "Hearts", "Spades" };
        String[] RANKS =
        {
            "2", "3", "4", "5", "6", "7", "8", "9", "10",
            "Jack", "Queen", "King", "Ace"
        };
        
        int i = (int) (Math.random() * RANKS.length);
        int j = (int) (Math.random() * SUITS.length);
        System.out.println(RANKS[i] + " of " + SUITS[j]);
        
        String deck = new String[RANKS.length * SUITS.length];
        for (int i = 0; i < RANKS.length; i++)
            for (int j = 0; j < SUITS.length; j++)
                deck[SUITS.length*i + j] = RANKS[i] + " of " + SUITS[j];
        System.out.println(Arrays.toString(deck));
        
        // // Exchanging two values in an array
        // String temp = deck[i];
        // deck[i] = deck[j];
        // deck[j] = temp;
        
        // // Shuffling an array
        // int n = deck.length;
        // for (int i = 0; i < n; i++)
        // {
        //     int r = i + (int) (Math.random() * (n-i));
        //     String temp = deck[i];
        //     deck[i] = deck[r];
        //     deck[r] = temp;
        // }
    }
}