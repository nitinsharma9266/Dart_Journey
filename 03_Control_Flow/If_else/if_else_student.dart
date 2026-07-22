import 'dart:io';

void main() {
    stdout.write("Enter Student Name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter Total Marks (0-100): ");
    double marks = double.parse(stdin.readLineSync()!);

    print("\n========== STUDENT RESULT ==========");

    if (marks < 0 || marks > 100) {
        print("Invalid Marks Entered");
        return;
    }

    print("Student Name : $name");
    print("Marks        : ${marks.toStringAsFixed(2)}");

    if (marks >= 33) {
        print("Result       : PASS");

        if (marks >= 90) {
            print("Grade        : A+");
            print("Performance  : Outstanding");
        } else if (marks >= 75) {
            print("Grade        : A");
            print("Performance  : Excellent");
        } else if (marks >= 60) {
            print("Grade        : B");
            print("Performance  : Very Good");
        } else if (marks >= 45) {
            print("Grade        : C");
            print("Performance  : Good");
        } else {
            print("Grade        : D");
            print("Performance  : Average");
        }

    } else {
        print("Result       : FAIL");
        print("Grade        : F");
        print("Performance  : Needs Improvement");
    }

    print("====================================");
}