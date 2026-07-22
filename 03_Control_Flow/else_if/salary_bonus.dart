import 'dart:io';

void main() {
    stdout.write("Enter Employee Name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter Monthly Salary: ");
    double salary = double.parse(stdin.readLineSync()!);

    stdout.write("Enter Years of Experience: ");
    int experience = int.parse(stdin.readLineSync()!);

    double bonusPercentage = 0;
    double bonusAmount = 0;

    print("\n========== BONUS DETAILS ==========");

    if (salary <= 0 || experience < 0) {
        print("Invalid Input");
        return;
    }

    if (experience >= 15) {
        bonusPercentage = 30;
    } else if (experience >= 10) {
        bonusPercentage = 25;
    } else if (experience >= 5) {
        bonusPercentage = 20;
    } else if (experience >= 2) {
        bonusPercentage = 10;
    } else {
        bonusPercentage = 5;
    }

    bonusAmount = salary * bonusPercentage / 100;

    print("Employee Name   : $name");
    print("Monthly Salary  : ₹${salary.toStringAsFixed(2)}");
    print("Experience      : $experience Years");
    print("Bonus Percentage: $bonusPercentage%");
    print("Bonus Amount    : ₹${bonusAmount.toStringAsFixed(2)}");
    print("Total Salary    : ₹${(salary + bonusAmount).toStringAsFixed(2)}");

    print("===================================");
}