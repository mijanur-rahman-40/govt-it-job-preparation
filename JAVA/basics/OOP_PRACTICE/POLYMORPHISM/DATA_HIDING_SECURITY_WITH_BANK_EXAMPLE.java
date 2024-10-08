
/*
 * How Polymorphism Handles Data Hiding & Security
 */

interface AccountInterface {
    void deposit(double amount);

    void withdraw(double amount);

    double getBalance();
}

abstract class Account implements AccountInterface {
    // It can not be declare as private, couse this abstract class is abstracted by others child class 
    protected double balance;

    public Account(double initialBalance) {
        this.balance = initialBalance;
    }

    @Override
    public void deposit(double amount) {
        if (amount >= 0) {
            balance += amount;
        } else {
            System.out.println("Invalid deposit amount.");
        }
    }

    @Override
    public void withdraw(double amount) {
        if (amount >= 0 && balance >= amount) {
            balance -= amount;
        } else {
            System.out.println("Insufficient funds or invalid withdrawal amount.");
        }
    }

    @Override
    public double getBalance() {
        return balance;
    }
}

class SavingsAccount extends Account {
    private double interestRate;

    public SavingsAccount(double initialBalance, double interestRate) {
        super(initialBalance);
        this.interestRate = interestRate;
    }

    @Override
    public void deposit(double amount) {
        super.deposit(amount);
        // Add interest based on the interest rate
        balance += balance * interestRate;
    }
}

class CheckingAccount extends Account {
    private double overdraftLimit;

    public CheckingAccount(double initialBalance, double overdraftLimit) {
        super(initialBalance);
        this.overdraftLimit = overdraftLimit;
    }

    @Override
    public void withdraw(double amount) {
        if (balance + overdraftLimit >= amount) {
            balance -= amount;
        } else {
            System.out.println("Overdraft limit exceeded.");
        }
    }
}

public class DATA_HIDING_SECURITY_WITH_BANK_EXAMPLE {
    public static void main(String[] args) {
        AccountInterface savingsAccount = new SavingsAccount(1000, 0.05);
        AccountInterface checkingAccount = new CheckingAccount(500, 200);

        savingsAccount.deposit(200);
        checkingAccount.withdraw(300);

        System.out.println("Savings balance: " + savingsAccount.getBalance());
        System.out.println("Checking balance: " + checkingAccount.getBalance());
    }
}
