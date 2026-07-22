import 'dart:io';

void main() {
    const int correctPin = 1234;

    double balance = 50000;

    print("======================================");
    print("         WELCOME TO ATM");
    print("======================================");

    stdout.write("Enter Your 4-Digit PIN: ");
    int pin = int.parse(stdin.readLineSync()!);

    if (pin != correctPin) {
        print("\nIncorrect PIN.");
        print("Transaction Cancelled.");
        return;
    }

    print("\nLogin Successful");

    print("\n========== ATM MENU ==========");
    print("1. Check Balance");
    print("2. Withdraw Cash");
    print("3. Deposit Cash");
    print("4. Mini Statement");
    print("5. Exit");

    stdout.write("\nEnter Your Choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
        case 1:
            print("\n========== ACCOUNT BALANCE ==========");
            print("Available Balance : ₹${balance.toStringAsFixed(2)}");
            break;

        case 2:
            stdout.write("\nEnter Withdrawal Amount: ");
            double amount = double.parse(stdin.readLineSync()!);

            if (amount <= 0) {
                print("Invalid Amount.");
            } else if (amount > balance) {
                print("Insufficient Balance.");
            } else {
                balance -= amount;

                print("\nCash Withdrawn Successfully");
                print("Withdraw Amount : ₹${amount.toStringAsFixed(2)}");
                print("Remaining Balance : ₹${balance.toStringAsFixed(2)}");
            }
            break;

        case 3:
            stdout.write("\nEnter Deposit Amount: ");
            double amount = double.parse(stdin.readLineSync()!);

            if (amount <= 0) {
                print("Invalid Amount.");
            } else {
                balance += amount;

                print("\nDeposit Successful");
                print("Deposited Amount : ₹${amount.toStringAsFixed(2)}");
                print("Updated Balance : ₹${balance.toStringAsFixed(2)}");
            }
            break;

        case 4:
            print("\n========== MINI STATEMENT ==========");
            print("Account Holder : Nitin Sharma");
            print("Account Type   : Savings");
            print("Current Balance: ₹${balance.toStringAsFixed(2)}");
            print("Last Transaction: No recent transaction");
            break;

        case 5:
            print("\nThank you for using our ATM.");
            print("Visit Again!");
            break;

        default:
            print("\nInvalid Choice.");
            print("Please select a valid option.");
    }

    print("\n======================================");
    print("      Transaction Completed");
    print("======================================");
}