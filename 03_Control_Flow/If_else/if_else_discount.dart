import 'dart:io';

void main() {
    stdout.write("Enter Customer Name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter Shopping Amount: ");
    double amount = double.parse(stdin.readLineSync()!);

    double discount = 0;

    print("\n========== BILL ==========");

    if (amount < 0) {
        print("Invalid Amount");
        return;
    }

    if (amount >= 5000) {
        discount = amount * 20 / 100;
    } else {
        if (amount >= 3000) {
            discount = amount * 15 / 100;
        } else {
            if (amount >= 1000) {
                discount = amount * 10 / 100;
            } else {
                discount = 0;
            }
        }
    }

    double finalAmount = amount - discount;

    print("Customer Name : $name");
    print("Shopping Amount : ₹${amount.toStringAsFixed(2)}");
    print("Discount : ₹${discount.toStringAsFixed(2)}");
    print("Final Amount : ₹${finalAmount.toStringAsFixed(2)}");

    if (discount > 0) {
        print("Congratulations! Discount Applied.");
    } else {
        print("No Discount Available.");
    }

    print("==========================");
}