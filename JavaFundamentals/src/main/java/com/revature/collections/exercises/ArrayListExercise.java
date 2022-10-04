package com.revature.collections.exercises;

import java.util.ArrayList;
import java.util.Collections;

public class ArrayListExercise {

    /*
    Below is a list of exercises to help you get familiar with working with the ArrayList Collection
     */
    public static void main(String[] args) {

        // 1. Write a Java program to create a new array list, add some colors (string) and print out the collection.
            ArrayList<String> colors = new ArrayList<String>();
            colors.add("green");
            colors.add("yellow");
            colors.add("blue");
            colors.add("mint");
            colors.add("purple");
            colors.add("lavender");
            System.out.println(colors);

        // 2. Write a Java program to iterate through all elements in an array list
            for(int i = 0; i < colors.size(); i++) {
                System.out.println(colors.get(i));
            }


        // 3. Write a Java program to insert an element into the array list at the first position
            colors.add(0, "turquoise");


        // 4. Write a Java program to retrieve an element (at a specified index) from a given array list
            System.out.println(colors.get(1));


        // 5. Write a Java program to remove the third element from an array list.
            colors.remove(2);
            System.out.println(colors);

        // 6. Write a Java program to search an element in an array list.
            if (colors.contains("mint")) {
                System.out.println("we have mint");
            } else {
                System.out.println("where's the mint?");
            }

        // 7. Write a Java program to sort a given array list.
            Collections.sort(colors);
            for (String s : colors) {
                System.out.println(s);
            }


    }
}
