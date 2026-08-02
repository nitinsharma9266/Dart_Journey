import 'dart:io';

class Payment {
    void makePayment(double amount) {
        print("Processing Payment...");
    }
}

class UPI extends Payment {
    @override
    void makePayment(double amount) {
        print("\n====== UPI PAYMENT ======");
        print("Amount : ₹$amount");
        print("Payment Successful via UPI");
    }
}

class CreditCard extends Payment {
    @override
    void makePayment(double amount) {
        print("\n====== CREDIT CARD PAYMENT ======");
        print("Amount : ₹$amount");
        print("Payment Successful via Credit Card");
    }
}

class CashOnDelivery extends Payment {
    @override
    void makePayment(double amount) {
        print("\n====== CASH ON DELIVERY ======");
        print("Amount : ₹$amount");
        print("Pay Cash at Delivery");
    }
}

void main() {

    stdout.write("Enter Bill Amount : ");
    double amount = double.parse(stdin.readLineSync()!);

    print("\nSelect Payment Method");
    print("1. UPI");
    print("2. Credit Card");
    print("3. Cash On Delivery");

    stdout.write("Enter Choice : ");
    int choice = int.parse(stdin.readLineSync()!);

    Payment payment;

    switch (choice) {

        case 1:
            payment = UPI();
            break;

        case 2:
            payment = CreditCard();
            break;

        case 3:
            payment = CashOnDelivery();
            break;

        default:
            print("Invalid Choice");
            return;
    }

    payment.makePayment(amount);
}