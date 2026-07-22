import 'dart:io';

void main() {
    stdout.write("Enter Student Name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter Marks (0 - 100): ");
    double marks = double.parse(stdin.readLineSync()!);

    print("\n========== RESULT ==========");

    if (marks < 0 || marks > 100) {
        print("Invalid Marks Entered");
    } else if (marks >= 90) {
        print("Student : $name");
        print("Marks   : $marks");
        print("Grade   : A+");
        print("Status  : Outstanding");
    } else if (marks >= 80) {
        print("Student : $name");
        print("Marks   : $marks");
        print("Grade   : A");
        print("Status  : Excellent");
    } else if (marks >= 70) {
        print("Student : $name");
        print("Marks   : $marks");
        print("Grade   : B");
        print("Status  : Very Good");
    } else if (marks >= 60) {
        print("Student : $name");
        print("Marks   : $marks");
        print("Grade   : C");
        print("Status  : Good");
    } else if (marks >= 50) {
        print("Student : $name");
        print("Marks   : $marks");
        print("Grade   : D");
        print("Status  : Average");
    } else if (marks >= 33) {
        print("Student : $name");
        print("Marks   : $marks");
        print("Grade   : E");
        print("Status  : Pass");
    } else {
        print("Student : $name");
        print("Marks   : $marks");
        print("Grade   : F");
        print("Status  : Fail");
    }

    print("============================");
}