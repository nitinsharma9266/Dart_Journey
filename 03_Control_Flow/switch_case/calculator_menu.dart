import 'dart:io';

void main() {
    print("====================================");
    print("      PROFESSIONAL CALCULATOR");
    print("====================================");

    stdout.write("Enter First Number: ");
    double num1 = double.parse(stdin.readLineSync()!);

    stdout.write("Enter Second Number: ");
    double num2 = double.parse(stdin.readLineSync()!);

    print("\nChoose Operation");
    print("1. Addition (+)");
    print("2. Subtraction (-)");
    print("3. Multiplication (*)");
    print("4. Division (/)");
    print("5. Modulus (%)");

    stdout.write("\nEnter Your Choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    double result;

    switch (choice) {
        case 1:
            result = num1 + num2;
            print("\nOperation : Addition");
            print("Result    : $result");
            break;

        case 2:
            result = num1 - num2;
            print("\nOperation : Subtraction");
            print("Result    : $result");
            break;

        case 3:
            result = num1 * num2;
            print("\nOperation : Multiplication");
            print("Result    : $result");
            break;

        case 4:
            if (num2 == 0) {
                print("\nError : Division by zero is not allowed.");
            } else {
                result = num1 / num2;
                print("\nOperation : Division");
                print("Result    : ${result.toStringAsFixed(2)}");
            }
            break;

        case 5:
            if (num2 == 0) {
                print("\nError : Modulus by zero is not allowed.");
            } else {
                result = num1 % num2;
                print("\nOperation : Modulus");
                print("Result    : $result");
            }
            break;

        default:
            print("\nInvalid Choice");
    }

    print("\n====================================");
}