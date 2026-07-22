import 'dart:io';

void main() {
    const int correctPin = 1234;
    double balance = 50000;

    print("========== ATM ==========");

    stdout.write("Enter PIN: ");
    int pin = int.parse(stdin.readLineSync()!);

    if (pin == correctPin) {
        print("\nLogin Successful");

        print("\n1. Check Balance");
        print("2. Withdraw Cash");

        stdout.write("\nEnter Your Choice: ");
        int choice = int.parse(stdin.readLineSync()!);

        if (choice == 1) {
            print("\nAvailable Balance : ₹${balance.toStringAsFixed(2)}");
        } else {
            stdout.write("\nEnter Withdraw Amount: ");
            double amount = double.parse(stdin.readLineSync()!);

            if (amount <= balance) {
                balance -= amount;

                print("\nTransaction Successful");
                print("Withdraw Amount : ₹${amount.toStringAsFixed(2)}");
                print("Remaining Balance : ₹${balance.toStringAsFixed(2)}");
            } else {
                print("\nInsufficient Balance");
            }
        }

    } else {
        print("\nIncorrect PIN");
    }

    print("=========================");
}