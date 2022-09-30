package com.revature.calculator;
import java.util.Scanner;

public class CalculatorDriver {
    public static void main(String[] args) {
        System.out.println("Please enter your equation you'd like solved below:");
        System.out.println("Use the + sign for addition");
        System.out.println("Use the - sign for subtraction");
        System.out.println("Use the * sign for multiplication");
        System.out.println("Use the / sign for division");
        Scanner input = new Scanner(System.in);
        String choice = input.toString();
        char operator = choice.charAt(1);
        if(operator == "/") {

        }
    }

    public static int add(int num1, int num2) {
        return num1 + num2;
    }

    public static int sub(int num1, int num2) {
        return num1 - num2;
    }

    public static int mult(int num1, int num2) {
        return num1 * num2;
    }

    public static int div(int num1, int num2) {
        return num1 / num2;
    }

}
