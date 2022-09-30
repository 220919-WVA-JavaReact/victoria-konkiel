package com.revature.ClassesObjects;

public class PersonDriver {
    /*
    I'm going to use the main method in this PersonDriver class to call upon my Person class and create person objects.
     */
    public static void main(String[] args) {
        //So any logic we write here will be the logic done when we run the program
        //Declare a primitive value
        int num = 9;

        //Declaring an object is slightly different
        Person bryan = new Person("Bryan", 71.75, 250.5, 25);
        System.out.println(bryan.height);
        System.out.println(bryan.name);

        Person victoria = new Person("Victoria", 71.75, 147.8, 30);
        System.out.println(victoria.weight);

        bryan.walk(5);

        victoria.talk();
        System.out.println(victoria.talk());

        Person jimmy = new Person();
        System.out.println(jimmy.weight);

        Person kyle = new Person("Kyle");
        System.out.println(jimmy.name);
        System.out.println(kyle.name);
        System.out.println(kyle.weight);

        //We can reassign the variables given to this case
        jimmy.name = "Jimmy";
        System.out.println(jimmy.name);
    }
}
