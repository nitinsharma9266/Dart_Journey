import 'dart:io';

double calculateFinalBill(double amount) {

    double gst = amount * 0.18;

    return amount + gst;
}

void main() {

    String customer = stdin.readLineSync()!;
    stdout.write("Customer Name : ");

    stdout.write("Shopping Amount : ");
    double amount = double.parse(stdin.readLineSync()!);

    double finalBill = calculateFinalBill(amount);

    print("\n========== SHOPPING BILL ==========");
    print("Customer : $customer");
    print("Amount : ₹$amount");
    print("Final Bill : ₹$finalBill");
}