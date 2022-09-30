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
        String choice = input.nextLine();
        int num1 = Character.getNumericValue(choice.charAt(0));
        char operator = choice.charAt(1);
        int num2 = Character.getNumericValue(choice.charAt(2));
        switch(operator) {
            case '+':
                add(num1, num2);
                break;
            case '-':
                sub(num1, num2);
                break;
            case '*':
                mult(num1, num2);
                break;
            case '/':
                div(num1, num2);
                break;
            default:
                System.out.println("I'm sorry, please try that again.");
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
