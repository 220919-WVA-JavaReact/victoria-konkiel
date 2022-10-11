package com.revature.testing;

public class Calculator {
    //Addition
    public int addNumber(int a, int b) {
        return a+b;
    }

    //Subtraction
    public int subNum(int a, int b) {
        return a-b;
    }

    public class ExpenseApprover {
        public boolean approveOrDenyExpense(Expense e) {
            if (e.amount < 100 && e.hasReceipt) {
                return true;
            } else {
                return false;
            }
        }
    }


}
