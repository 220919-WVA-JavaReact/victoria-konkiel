package com.revature.arrays;
//importing the info about the class arrays
import java.util.Arrays;

public class ArrayDriver {
    public static void main(String[] args) {
        int[] myNumArray = new int[10];
        myNumArray[0] = 74;
        System.out.println(Arrays.toString(myNumArray));
        //System.out.println(myNumArray.toString());
        int[] myArray = {1, 2, 3, 4, 5};
        System.out.println(Arrays.toString(myArray));

        //How would I go about adding up every number in this array?
        double balance = 0;
        double[] transactions = {1000, -119.99,  40, -35.43, -150.65};

        //How do I find the current balance of my account?
        //I'd have to find the sum of the values in this array
        for(int i = 0; i < transactions.length; i++) {
            balance += transactions[i];
        }
        System.out.println("Balance is: " + balance);

        for(int i = 0; i < transactions.length; i++) {
            System.out.println(transactions[1]);
        }

        //sort this array?
        char[] sizesOfShirts = {'s', 'm', 'l', 's', 'l', 'x', 't'};
        int[] sizesAsNumbers = {2, 3, 4, 2, 4, 5, 1};
        Arrays.sort(sizesAsNumbers);
        System.out.println(Arrays.toString(sizesAsNumbers));
    }
}
