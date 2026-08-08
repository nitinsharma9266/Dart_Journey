import 'dart:io';

class PaymentService {

    void makePayment(double amount, double balance) {

        try {

            if (amount <= 0) {
                throw Exception(
                    "Payment amount must be greater than 0."
                );
            }

            if (amount > balance) {
                throw Exception(
                    "Insufficient balance."
                );
            }

            print("\n✅ Payment Successful.");
            print("Paid Amount : ₹$amount");

        } catch (e) {

            // Error ko yahan log kar rahe hain
            print("\n⚠️ Payment Service Error: $e");

            // Same exception ko main() ki taraf bhej rahe hain
            rethrow;
        }
    }
}

void main() {

    try {

        stdout.write("Enter Account Balance : ");
        double balance = double.parse(
            stdin.readLineSync()!
        );

        stdout.write("Enter Payment Amount : ");
        double amount = double.parse(
            stdin.readLineSync()!
        );

        PaymentService service = PaymentService();

        service.makePayment(
            amount,
            balance
        );

    } catch (e) {

        print("\n❌ Payment Failed.");
        print("Reason: $e");

    } finally {

        print("\nTransaction Completed.");
    }
}