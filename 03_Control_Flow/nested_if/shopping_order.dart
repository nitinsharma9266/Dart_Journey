import 'dart:io';

void main() {
    stdout.write("Are You Logged In? (yes/no): ");
    String login = stdin.readLineSync()!.toLowerCase();

    if (login == "yes") {

        print("\nSelect Payment Method");
        print("1. UPI");
        print("2. Card");
        print("3. Cash On Delivery");

        stdout.write("Enter Choice: ");
        int choice = int.parse(stdin.readLineSync()!);

        if (choice == 1) {
            print("Payment Successful Through UPI");
            print("Order Confirmed");
        } else if (choice == 2) {
            print("Payment Successful Through Card");
            print("Order Confirmed");
        } else if (choice == 3) {
            print("Cash On Delivery Selected");
            print("Order Confirmed");
        } else {
            print("Invalid Payment Method");
        }

    } else {
        print("Please Login First");
    }
}