import 'dart:io';

void main() {
    const String correctUsername = "nitin";
    const String correctPassword = "Flutter@123";
    const int otp = 123456;

    print("========== LOGIN SYSTEM ==========\n");

    stdout.write("Enter Username: ");
    String username = stdin.readLineSync()!;

    stdout.write("Enter Password: ");
    String password = stdin.readLineSync()!;

    stdout.write("Is Your Account Active? (yes/no): ");
    String accountStatus = stdin.readLineSync()!.toLowerCase();

    print();

    if (username == correctUsername) {

        if (password == correctPassword) {

            if (accountStatus == "yes") {

                print("Username Verified");
                print("Password Verified");
                print("Account Status : Active");

                stdout.write("\nEnter OTP: ");
                int enteredOtp = int.parse(stdin.readLineSync()!);

                if (enteredOtp == otp) {

                    print("\n==============================");
                    print(" Login Successful");
                    print("==============================");
                    print("Welcome $username");
                    print("Last Login : Today");
                    print("Security Level : High");
                    print("==============================");

                } else {

                    print("\nInvalid OTP");
                }

            } else {

                print("Your account is inactive.");
                print("Please contact customer support.");

            }

        } else {

            print("Incorrect Password");

        }

    } else {

        print("Username Not Found");

    }
}