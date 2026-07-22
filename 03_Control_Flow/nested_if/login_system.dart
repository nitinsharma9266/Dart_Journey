import 'dart:io';

void main() {
    int attempts = 3;

    while (attempts > 0) {
        stdout.write("Enter Username: ");
        String username = stdin.readLineSync()!.toLowerCase();

        stdout.write("Enter Password: ");
        String password = stdin.readLineSync()!.toLowerCase();

        if (username == "nitin") {
            if (password == "1234") {
                print("\nLogin Successful");
                return;
            } else {
                attempts--;
                print("\nWrong Password");
            }
        } else {
            attempts--;
            print("\nWrong Username");
        }

        print("Remaining Attempts: $attempts\n");
    }

    print("Account Locked");
}