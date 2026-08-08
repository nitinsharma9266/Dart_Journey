import 'dart:io';

// ========================================
// CUSTOM EXCEPTIONS
// ========================================

class InvalidAmountException implements Exception {
    String message;

    InvalidAmountException(this.message);

    @override
    String toString() {
        return message;
    }
}

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

    void withdraw(double amount) {

        if (amount <= 0) {
            throw InvalidAmountException(
                "Amount must be greater than 0."
            );
        }

        if (amount > balance) {
            throw InsufficientBalanceException(
                "Insufficient balance."
            );
        }

        balance = balance - amount;

        print("\n✅ Withdrawal Successful.");
        print("Withdrawn Amount : ₹$amount");
        print("Remaining Balance: ₹$balance");
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

        stdout.write("Enter Withdrawal Amount : ");

        double amount = double.parse(
            stdin.readLineSync()!
        );

        account.withdraw(amount);

    } on InvalidAmountException catch (e) {

        print("\n❌ Invalid Amount");
        print("Reason: $e");

    } on InsufficientBalanceException catch (e) {

        print("\n❌ Transaction Failed");
        print("Reason: $e");

    } on FormatException {

        print("\n❌ Please enter a valid number.");

    } catch (e) {

        print("\n❌ Something went wrong.");
        print("Error: $e");

    } finally {

        print("\nTransaction Process Completed.");
    }
}