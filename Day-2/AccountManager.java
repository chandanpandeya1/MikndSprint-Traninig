package com.mindsprint.sample;

import java.util.Scanner;

class Account {
    private int accountNumber;
    private String accountHolder;
    private int currentBalance;

    public int getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(int accountNumber) {
        this.accountNumber = accountNumber;
    }

    public String getAccountHolder() {
        return accountHolder;
    }

    public void setAccountHolder(String accountHolder) {
        this.accountHolder = accountHolder;
    }

    public int getCurrentBalance() {
        return currentBalance;
    }

    public void setCurrentBalance(int currentBalance) {
        this.currentBalance = currentBalance;
    }
}

interface BankingOperations {
    void withdrawFunds(int amount);
    void depositFunds(int amount);
}

class SavingsAccount extends Account implements BankingOperations {
    public SavingsAccount(int accountNumber, String accountHolder, int currentBalance) {
        setAccountNumber(accountNumber);
        setAccountHolder(accountHolder);
        setCurrentBalance(currentBalance);
    }

    @Override
    public void withdrawFunds(int amount) {
        System.out.println("Withdrawal of Rs." + amount + " is successful from your Savings Account.");
        setCurrentBalance(getCurrentBalance() - amount);
        System.out.println("Remaining Balance: " + getCurrentBalance());
    }

    @Override
    public void depositFunds(int amount) {
        System.out.println("Deposit of Rs." + amount + " is successful in your Savings Account.");
        setCurrentBalance(getCurrentBalance() + amount);
        System.out.println("New Balance: " + getCurrentBalance());
    }
}

class CurrentAccount extends Account implements BankingOperations {
    public CurrentAccount(int accountNumber, String accountHolder, int currentBalance) {
        setAccountNumber(accountNumber);
        setAccountHolder(accountHolder);
        setCurrentBalance(currentBalance);
    }

    @Override
    public void withdrawFunds(int amount) {
        System.out.println("Withdrawal of Rs." + amount + " is successful from your Current Account.");
        setCurrentBalance(getCurrentBalance() - amount);
        System.out.println("Remaining Balance: " + getCurrentBalance());
    }

    @Override
    public void depositFunds(int amount) {
        System.out.println("Deposit of Rs." + amount + " is successful in your Current Account.");
        setCurrentBalance(getCurrentBalance() + amount);
        System.out.println("New Balance: " + getCurrentBalance());
    }
}

public class AccountManager {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Choose account type (Savings/Current): ");
        String accountType = scanner.next();
        System.out.println("Enter Account Number: ");
        int accountNumber = scanner.nextInt();
        System.out.println("Enter Account Holder Name: ");
        String accountHolder = scanner.next();

        if (accountType.equalsIgnoreCase("Savings")) {
            SavingsAccount savingsAccount = new SavingsAccount(accountNumber, accountHolder, 100000);
            System.out.println("Choose operation (Withdraw/Deposit): ");
            String operation = scanner.next();
            System.out.println("Enter amount to " + operation + ": ");
            int amount = scanner.nextInt();
            if (operation.equalsIgnoreCase("Withdraw")) {
                savingsAccount.withdrawFunds(amount);
            } else if (operation.equalsIgnoreCase("Deposit")) {
                savingsAccount.depositFunds(amount);
            }
        } else if (accountType.equalsIgnoreCase("Current")) {
            CurrentAccount currentAccount = new CurrentAccount(accountNumber, accountHolder, 90000);
            System.out.println("Choose operation (Withdraw/Deposit): ");
            String operation = scanner.next();
            System.out.println("Enter amount to " + operation + ": ");
            int amount = scanner.nextInt();
            if (operation.equalsIgnoreCase("Withdraw")) {
                currentAccount.withdrawFunds(amount);
            } else if (operation.equalsIgnoreCase("Deposit")) {
                currentAccount.depositFunds(amount);
            }
        } else {
            System.out.println("Invalid account type.");
        }
    }
}
