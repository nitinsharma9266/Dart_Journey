import 'dart:io';

void main() {
    stdout.write("Enter Your Name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter Your Age: ");
    int age = int.parse(stdin.readLineSync()!);

    stdout.write("Are You an Indian Citizen? (yes/no): ");
    String citizen = stdin.readLineSync()!.toLowerCase();

    print("\n========== VOTER STATUS ==========");

    if (age < 0 || age > 120) {
        print("Invalid Age Entered");
    } else {
        print("Name       : $name");
        print("Age        : $age");
        print("Citizen    : ${citizen.toUpperCase()}");

        if (age >= 18) {
            if (citizen == "yes") {
                print("Status     : Eligible to Vote");
                print("Message    : Please carry your Voter ID.");
            } else {
                print("Status     : Not Eligible");
                print("Reason     : Only Indian citizens can vote.");
            }
        } else {
            print("Status     : Not Eligible");
            print("Reason     : Minimum voting age is 18 years.");
        }
    }

    print("==================================");
}