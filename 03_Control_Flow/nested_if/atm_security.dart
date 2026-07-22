import 'dart:io';

void main() {
    int balance = 50000;

    stdout.write("Is Card Inserted? (yes/no): ");
    String card = stdin.readLineSync()!.toLowerCase();

    if (card == "yes") {

        stdout.write("Enter PIN: ");
        int pin = int.parse(stdin.readLineSync()!);

        if (pin == 1234) {

            print("\n===== ATM MENU =====");
            print("1. Check Balance");
            print("2. Withdraw");
            print("3. Deposit");

            stdout.write("Enter Choice: ");
            int choice = int.parse(stdin.readLineSync()!);

            if (choice == 1) {
                print("Available Balance: ₹$balance");
            } else if (choice == 2) {

                stdout.write("Enter Amount: ");
                int amount = int.parse(stdin.readLineSync()!);

              else if(choice==3){
                stdout.write("Enter Deposit Amount : ");
                int depositAmount=int.parse(stdin.readLineSync()!);
                balance=balance+depositAmount;
              }

                if (amount <= balance) {
                    balance -= amount;
                    print("Please Collect Your Cash");
                    print("Remaining Balance: ₹$balance");
                } else {
                    print("Insufficient Balance");
                }

            } else {
                print("Invalid Choice");
            }

        } else {
            print("Incorrect PIN");
        }

    } else {
        print("Please Insert Your Card");
    }
}