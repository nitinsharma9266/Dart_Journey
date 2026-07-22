import 'dart:io';

void main() {
    stdout.write("Enter Your Name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter Annual Income: ");
    double income = double.parse(stdin.readLineSync()!);

    double taxRate = 0;
    double taxAmount = 0;
    double netIncome = 0;

    print("\n========== TAX REPORT ==========");

    if (income < 0) {
        print("Invalid Income");
        return;
    }

    if (income <= 300000) {
        taxRate = 0;
    } else if (income <= 700000) {
        taxRate = 5;
    } else if (income <= 1000000) {
        taxRate = 10;
    } else if (income <= 1500000) {
        taxRate = 20;
    } else {
        taxRate = 30;
    }

    taxAmount = income * taxRate / 100;
    netIncome = income - taxAmount;

    print("Name          : $name");
    print("Annual Income : ₹${income.toStringAsFixed(2)}");
    print("Tax Rate      : $taxRate%");
    print("Tax Amount    : ₹${taxAmount.toStringAsFixed(2)}");
    print("Net Income    : ₹${netIncome.toStringAsFixed(2)}");

    print("================================");
}