import 'dart:io';

class PaymentGateway {

    void pay(double amount) {}

    void refund(double amount) {}
}

class UPI implements PaymentGateway {

    @override
    void pay(double amount) {
        print("\n========== UPI PAYMENT ==========");
        print("Payment Successful");
        print("Amount Paid : ₹$amount");
    }

    @override
    void refund(double amount) {
        print("Refund Successful");
        print("Refund Amount : ₹$amount");
    }
}

class CreditCard implements PaymentGateway {

    @override
    void pay(double amount) {
        print("\n====== CREDIT CARD PAYMENT ======");
        print("Payment Successful");
        print("Amount Paid : ₹$amount");
    }

    @override
    void refund(double amount) {
        print("Refund Successful");
        print("Refund Amount : ₹$amount");
    }
}

class NetBanking implements PaymentGateway {

    @override
    void pay(double amount) {
        print("\n====== NET BANKING PAYMENT ======");
        print("Payment Successful");
        print("Amount Paid : ₹$amount");
    }

    @override
    void refund(double amount) {
        print("Refund Successful");
        print("Refund Amount : ₹$amount");
    }
}

void main() {

    while (true) {

        print("\n========== PAYMENT GATEWAY ==========");
        print("1. UPI");
        print("2. Credit Card");
        print("3. Net Banking");
        print("4. Exit");

        stdout.write("Enter Choice : ");
        int choice = int.parse(stdin.readLineSync()!);

        if (choice == 4) {
            print("Thank You...");
            return;
        }

        stdout.write("Enter Payment Amount : ");
        double amount = double.parse(stdin.readLineSync()!);

        PaymentGateway payment;

        switch (choice) {

            case 1:
                payment = UPI();
                break;

            case 2:
                payment = CreditCard();
                break;

            case 3:
                payment = NetBanking();
                break;

            default:
                print("Invalid Choice");
                continue;
        }

        payment.pay(amount);

        stdout.write("\nDo You Want Refund? (yes/no): ");
        String answer = stdin.readLineSync()!.toLowerCase();

        if (answer == "yes") {
            payment.refund(amount);
        }

        print("\nPress Enter To Continue...");
        stdin.readLineSync();
    }
}