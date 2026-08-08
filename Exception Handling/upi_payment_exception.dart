import 'dart:io';

void makePayment(
    String upiId,
    double amount,
    double balance
) {

    if (!upiId.contains("@")) {
        throw Exception("Invalid UPI ID.");
    }

    if (amount <= 0) {
        throw Exception("Payment amount must be greater than 0.");
    }

    if (amount > balance) {
        throw Exception("Insufficient balance.");
    }

    print("\n========== UPI PAYMENT ==========");
    print("UPI ID : $upiId");
    print("Amount : ₹$amount");
    print("Status : Payment Successful");
    print("=================================");
}

void main() {

    try {

        stdout.write("Enter UPI ID : ");
        String upiId =stdin.readLineSync()!;

        stdout.write("Enter Payment Amount : ");
        double amount =double.parse(stdin.readLineSync()!);

        stdout.write("Enter Account Balance : ");
        double balance =double.parse(stdin.readLineSync()!);

        makePayment(
            upiId,
            amount,
            balance
        );

    } catch (e) {

        print("\n❌ Payment Failed.");
        print("Reason: $e");

    } finally {

        print("\nPayment process completed.");
    }
}