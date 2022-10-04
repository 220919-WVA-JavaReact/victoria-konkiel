package com.revature.collections.exercises;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

public class LinkedListExercise {

    /*
    Below is a list of exercises to help you get familiar with working with the ArrayList Collection
     */
    public static void main(String[] args) {

        // 1. Write a Java program to append the specified element to the end of a linked list. Add several values.
            LinkedList<String> colors = new LinkedList<String>();
            colors.add("purple");
            colors.add("lavender");
            colors.add("turquoise");
            colors.add("green");
            colors.add("blue");
            System.out.println(colors);
        // 2. Write a Java program to iterate through all elements in a linked list.
            for(String s : colors) {
                System.out.println(s);
            }
        // 3. Write a Java program to iterate a linked list in reverse order
            Collections.sort(colors, Collections.reverseOrder());
            System.out.println(colors);
        // 4.  Write a Java program to insert the specified element at the front of a linked list
            colors.addFirst("cyan");
            System.out.println(colors);
        // 5. Write a Java program to insert some elements at the specified position into a linked list.
            colors.add(4, "cerulean");
        // 6. Write a Java program to get the first and last occurrence of the specified elements in a linked list.
            System.out.println(colors.getFirst());
            System.out.println(colors.getLast());
        // 7. Write a Java program to check if a particular element exists in a linked list.
            if(colors.contains("cyan")) {
                System.out.println("cyan yeah!");
            } else {
                System.out.println("there is no cyan you are looking for");
            }
        // 8. Write a Java program to convert a linked list to array list.
            List<String> arrayList = new ArrayList<String>(colors);
            System.out.println(arrayList);
    }
}