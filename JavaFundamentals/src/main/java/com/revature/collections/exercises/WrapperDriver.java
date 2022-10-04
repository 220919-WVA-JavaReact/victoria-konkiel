package com.revature.collections;

public class WrapperDriver {
    public static void main(String[] args) {
        //We use Wrapper classes to help turn primitives into objects and turn objects into primitives
        int num = 5;
        Integer wrapperNum = 5;

        //Declare like an object
        Integer choice = Integer.parseInt("5");
        System.out.println(choice + 4);
        autobox(num);
    }

    //I can pass either an object of int type or Integer type into this method
    public static void autobox (Integer i) {
        System.out.println(i);
    }
}
