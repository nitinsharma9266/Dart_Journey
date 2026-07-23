import 'dart:io';

void main() {
    int correctPin = 1234;
    int enteredPin = 0;

    while (enteredPin != correctPin) {
        stdout.write("Enter ATM PIN : ");
        enteredPin = int.parse(stdin.readLineSync()!);

        if (enteredPin != correctPin) {
            print("Incorrect PIN");
            print("Try Again\n");
        }
    }

    print("\nPIN Verified Successfully");
    print("Welcome to Your Account");
}