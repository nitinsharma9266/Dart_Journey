import 'dart:io';

double calculatePercentage(
    String studentName,
    int totalMarks,
    int obtainedMarks
) {

    if (studentName.trim().isEmpty) {
        throw Exception(
            "Student name cannot be empty."
        );
    }

    if (totalMarks <= 0) {
        throw Exception(
            "Total marks must be greater than 0."
        );
    }

    if (obtainedMarks < 0) {
        throw Exception(
            "Obtained marks cannot be negative."
        );
    }

    if (obtainedMarks > totalMarks) {
        throw Exception(
            "Obtained marks cannot exceed total marks."
        );
    }

    double percentage =
        (obtainedMarks / totalMarks) * 100;

    return percentage;
}

void main() {

    try {

        stdout.write("Student Name : ");
        String name = stdin.readLineSync()!;

        stdout.write("Total Marks : ");
        int total = int.parse(
            stdin.readLineSync()!
        );

        stdout.write("Obtained Marks : ");
        int obtained = int.parse(
            stdin.readLineSync()!
        );

        double percentage =
            calculatePercentage(
                name,
                total,
                obtained
            );

        print("\n========== RESULT ==========");
        print("Student    : $name");
        print("Percentage : ${percentage.toStringAsFixed(2)}%");
        print("============================");

    } catch (e) {

        print("\n❌ Result Processing Failed.");
        print("Reason: $e");

    } finally {

        print("\nResult process completed.");
    }
}