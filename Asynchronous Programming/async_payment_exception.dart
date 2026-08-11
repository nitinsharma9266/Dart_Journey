import 'dart:io';

Future<String> makePayment(
    double balance,
    double amount,
) async {

    await Future.delayed(
        Duration(seconds: 2),
    );

    if (amount <= 0) {
        throw Exception(
            "Invalid payment amount.",
        );
    }

    if (amount > balance) {
        throw Exception(
            "Insufficient balance.",
        );
    }

    return "Payment Successful";
}

Future<void> main() async {

    try {

        stdout.write("Enter Balance : ");
        double balance = double.parse(
            stdin.readLineSync()!,
        );

        stdout.write("Enter Payment Amount : ");
        double amount = double.parse(
            stdin.readLineSync()!,
        );

        print("\n⏳ Processing Payment...");

        String result = await makePayment(
            balance,
            amount,
        );

        print("\n✅ $result");

    } catch (e) {

        print("\n❌ Payment Failed.");
        print("Reason: $e");
    }
}