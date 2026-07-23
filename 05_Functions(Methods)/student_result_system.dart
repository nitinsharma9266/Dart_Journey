import 'dart:io';

double calculatePercentage(
    int english,
    int hindi,
    int mathematics,
    int science,
    int computer,
) {
    int totalMarks =
        english +
        hindi +
        mathematics +
        science +
        computer;

    return totalMarks / 5;
}

String calculateGrade(double percentage) {
    if (percentage >= 90) {
        return "A+";
    } else if (percentage >= 80) {
        return "A";
    } else if (percentage >= 70) {
        return "B";
    } else if (percentage >= 60) {
        return "C";
    } else if (percentage >= 40) {
        return "D";
    } else {
        return "Fail";
    }
}

void printResult(
    String studentName,
    double percentage,
    String grade,
) {
    print("\n========== STUDENT RESULT ==========");
    print("Student Name : $studentName");
    print("Percentage   : ${percentage.toStringAsFixed(2)}%");
    print("Grade        : $grade");
}

void main() {
    stdout.write("Enter Student Name : ");
    String studentName = stdin.readLineSync()!;

    stdout.write("English Marks : ");
    int english = int.parse(stdin.readLineSync()!);

    stdout.write("Hindi Marks : ");
    int hindi = int.parse(stdin.readLineSync()!);

    stdout.write("Mathematics Marks : ");
    int mathematics = int.parse(stdin.readLineSync()!);

    stdout.write("Science Marks : ");
    int science = int.parse(stdin.readLineSync()!);

    stdout.write("Computer Marks : ");
    int computer = int.parse(stdin.readLineSync()!);

    double percentage = calculatePercentage(
        english,
        hindi,
        mathematics,
        science,
        computer,
    );

    String grade = calculateGrade(percentage);

    printResult(
        studentName,
        percentage,
        grade,
    );
}