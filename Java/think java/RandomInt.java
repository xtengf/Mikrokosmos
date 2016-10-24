
/**
 * Casting to get a random integer.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */


    /**
     * Constructor for objects of class RandomInt
     */
    public class RandomInt
    {
        public static void main(String[] args)
        {
            int n = Integer.parseInt(args[0]);
            double r = Math.random();
            int value = (int)(r*n);
            System.out.println(value);
        }
    }

