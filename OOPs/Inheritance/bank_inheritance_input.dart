import 'dart:io';

class Account {
    String accountHolder = "";
    double balance = 0;

    void createAccount() {
        stdout.write("Enter Account Holder Name : ");
        accountHolder = stdin.readLineSync()!;

        stdout.write("Enter Initial Balance : ");
        balance = double.parse(stdin.readLineSync()!);
    }

    void deposit(double amount) {
        if (amount > 0) {
            balance += amount;
            print("✅ ₹$amount Deposited Successfully.");
        } else {
            print("❌ Invalid Deposit Amount.");
        }
    }

    void showBalance() {
        print("\n========== ACCOUNT DETAILS ==========");
        print("Account Holder : $accountHolder");
        print("Current Balance : ₹$balance");
        print("=====================================");
    }
}

class SavingsAccount extends Account {
    double interestRate = 0;

    void inputInterestRate() {
        stdout.write("Enter Interest Rate (%): ");
        interestRate = double.parse(stdin.readLineSync()!);
    }

    void calculateInterest() {
        double interest = balance * interestRate / 100;

        print("\n====== SAVINGS ACCOUNT ======");
        print("Interest Rate : $interestRate%");
        print("Interest      : ₹$interest");
        print("Final Balance : ₹${balance + interest}");
        print("=============================");
    }
}

class CurrentAccount extends Account {
    double overdraftLimit = 0;

    void inputOverdraftLimit() {
        stdout.write("Enter Overdraft Limit : ");
        overdraftLimit = double.parse(stdin.readLineSync()!);
    }

    void checkOverdraft() {
        print("\n====== CURRENT ACCOUNT ======");

        if (balance >= overdraftLimit) {
            print("✅ Overdraft Facility Available");
        } else {
            print("❌ Overdraft Facility Not Available");
        }

        print("=============================");
    }
}

void main() {
    print("========== SAVINGS ACCOUNT ==========");

    SavingsAccount savings = SavingsAccount();

    savings.createAccount();
    savings.inputInterestRate();

    stdout.write("Enter Deposit Amount : ");
    double depositAmount = double.parse(stdin.readLineSync()!);

    savings.deposit(depositAmount);

    savings.showBalance();
    savings.calculateInterest();

    print("\n\n========== CURRENT ACCOUNT ==========");

    CurrentAccount current = CurrentAccount();

    current.createAccount();
    current.inputOverdraftLimit();

    stdout.write("Enter Deposit Amount : ");
    double depositAmount2 = double.parse(stdin.readLineSync()!);

    current.deposit(depositAmount2);

    current.showBalance();
    current.checkOverdraft();
}