import 'dart:io';

double calculateInterest(
    double principal,
    double rate,
    int year) {

  return (principal * rate * year) / 100;
}

void main() {

    stdout.write("Customer Name : ");
    String customer = stdin.readLineSync()!;

    stdout.write("Principal Amount : ");
    double principal =double.parse(stdin.readLineSync()!);

    stdout.write("Interest Rate : ");
    double rate =double.parse(stdin.readLineSync()!);

    stdout.write("Years : ");
    int year =int.parse(stdin.readLineSync()!);

    double interest =
        calculateInterest(principal, rate, year);

    print("\n========== FD REPORT ==========");
    print("Customer : $customer");
    print("Interest : ₹$interest");
    print("Maturity Amount : ₹${principal + interest}");
}