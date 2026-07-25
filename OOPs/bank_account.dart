import 'dart:io';

class BankAccount {
  late String accountHolderName;
  late int accountNumber;
  late double balance;
  late bool isActive;

  void showAccountDetails() {
    print("========== Account Details ==========");
    print("Account Holder Name : $accountHolderName");
    print("Account Number      : $accountNumber");
    print("Account Balance     : $balance");
    print("Account Status      : ${isActive ? "Active" : "Inactive"}");
    print("=====================================");
  }
}

void main() {
  BankAccount b1 = BankAccount();
  print("==========Inputs of First Account Holder Details===========");

  stdout.write("Enter Account Holder Name : ");
  b1.accountHolderName = stdin.readLineSync()!;
  print("");

  stdout.write("Enter Your Account Number : ");
  b1.accountNumber = int.parse(stdin.readLineSync()!);
  print("");

  stdout.write("Enter Your Account Balance : ");
  b1.balance = double.parse(stdin.readLineSync()!);
  print("");

  stdout.write("Is Your Account Active (true, false): ");
  b1.isActive = bool.parse(stdin.readLineSync()!);
  print("");

  BankAccount b2 = BankAccount();
  print("===========Input of Second Accound Holder Details===========");
  stdout.write("Enter Account Holder Name : ");
  b2.accountHolderName = stdin.readLineSync()!;
  print("");

  stdout.write("Enter Your Account Number : ");
  b2.accountNumber = int.parse(stdin.readLineSync()!);
  print("");

  stdout.write("Enter Your Account Balance : ");
  b2.balance = double.parse(stdin.readLineSync()!);
  print("");

  stdout.write("Is Your Account Active (true, false): ");
  b2.isActive = bool.parse(stdin.readLineSync()!);
  print("");

  b1.showAccountDetails();

  print("");

  b2.showAccountDetails();
}