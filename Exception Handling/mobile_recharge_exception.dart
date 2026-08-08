import 'dart:io';

void recharge(String number, double amount) {

    if (number.length != 10) {
        throw Exception("Mobile number must contain 10 digits.");
    }

    if (amount < 10) {
        throw Exception("Minimum recharge amount is ₹10.");
    }

    print("\n========== RECHARGE ==========");
    print("Mobile Number : $number");
    print("Recharge      : ₹$amount");
    print("Status        : Successful");
    print("==============================");
}

void main() {

    try {

        stdout.write("Enter Mobile Number : ");
        String number = stdin.readLineSync()!;

        stdout.write("Enter Recharge Amount : ");
        double amount =
            double.parse(stdin.readLineSync()!);

        recharge(number, amount);

    } catch (e) {

        print("\n❌ Recharge Failed.");
        print("Reason: $e");

    } finally {

        print("\nRecharge process completed.");
    }
}