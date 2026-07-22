import 'dart:io';

void main() {
    stdout.write("Is Aadhaar Verified? (yes/no): ");
    String aadhaar = stdin.readLineSync()!.toLowerCase();

    if (aadhaar == "yes") {

        stdout.write("Is Income Verified? (yes/no): ");
        String income = stdin.readLineSync()!.toLowerCase();

        if (income == "yes") {

            stdout.write("Enter CIBIL Score: ");
            int cibil = int.parse(stdin.readLineSync()!);

            if (cibil >= 750) {
                print("\nLoan Approved");
            } else {
                print("\nLoan Rejected: Low CIBIL Score");
            }

        } else {
            print("\nLoan Rejected: Income Not Verified");
        }

    } else {
        print("\nLoan Rejected: Aadhaar Not Verified");
    }
}