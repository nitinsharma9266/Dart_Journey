import 'dart:io';

// ========================================
// CUSTOM EXCEPTION
// ========================================

class InsufficientBalanceException implements Exception {
    String message;

    InsufficientBalanceException(this.message);

    @override
    String toString() {
        return message;
    }
}

// ========================================
// BANK ACCOUNT
// ========================================

class BankAccount {

    double balance;

    BankAccount(this.balance);

    void transfer(double amount) {

        if (amount <= 0) {
            throw Exception(
                "Transfer amount must be greater than 0."
            );
        }

        if (amount > balance) {
            throw InsufficientBalanceException(
                "Insufficient balance for this transfer."
            );
        }

        balance = balance - amount;

        print("\n✅ Transfer Successful.");
        print("Transferred Amount : ₹$amount");
        print("Remaining Balance  : ₹$balance");
    }
}

// ========================================
// BANK SERVICE
// ========================================

void processTransfer(
    BankAccount account,
    double amount
) {

    try {

        account.transfer(amount);

    } catch (e) {

        print("\n⚠️ Bank Service: Error received.");

        // Exception ko upper level par bhej rahe hain
        rethrow;
    }
}

// ========================================
// MAIN
// ========================================

void main() {

    try {

        stdout.write("Enter Account Balance : ");

        double balance = double.parse(
            stdin.readLineSync()!
        );

        BankAccount account =
            BankAccount(balance);

        stdout.write("Enter Transfer Amount : ");

        double amount = double.parse(
            stdin.readLineSync()!
        );

        processTransfer(
            account,
            amount
        );

    } on InsufficientBalanceException catch (e) {

        print("\n❌ Transfer Failed.");
        print("Reason: $e");

    } on FormatException {

        print("\n❌ Please enter a valid number.");

    } catch (e) {

        print("\n❌ Something went wrong.");
        print("Error: $e");

    } finally {

        print("\nBank Transaction Completed.");
    }
}