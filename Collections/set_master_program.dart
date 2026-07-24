import 'dart:io';

void main() {
    Set<String> students = {};

    print("========== ADD STUDENTS ==========");

    stdout.write("How many students do you want to add? : ");
    int n = int.parse(stdin.readLineSync()!);

    for (int i = 1; i <= n; i++) {
        stdout.write("Enter Student $i : ");
        students.add(stdin.readLineSync()!);
    }

    print("\n========== ORIGINAL SET ==========");
    print(students);

    // ==============================
    // Properties
    // ==============================

    print("\n========== PROPERTIES ==========");
    print("Length      : ${students.length}");
    print("First       : ${students.first}");
    print("Last        : ${students.last}");
    print("Is Empty    : ${students.isEmpty}");
    print("Is NotEmpty : ${students.isNotEmpty}");

    // ==============================
    // Add One Student
    // ==============================

    stdout.write("\nEnter One Student To Add : ");
    students.add(stdin.readLineSync()!);

    // ==============================
    // Add Multiple Students
    // ==============================

    stdout.write("\nHow many more students do you want to add? : ");
    int m = int.parse(stdin.readLineSync()!);

    Set<String> newStudents = {};

    for (int i = 1; i <= m; i++) {
        stdout.write("Enter Student $i : ");
        newStudents.add(stdin.readLineSync()!);
    }

    students.addAll(newStudents);

    print("\n========== AFTER ADD ==========");
    print(students);

    // ==============================
    // Search
    // ==============================

    stdout.write("\nEnter Student Name To Search : ");
    String searchName = stdin.readLineSync()!;

    print("Contains : ${students.contains(searchName)}");
    print("Lookup   : ${students.lookup(searchName)}");

    // ==============================
    // Remove
    // ==============================

    stdout.write("\nEnter Student Name To Remove : ");
    String removeName = stdin.readLineSync()!;

    students.remove(removeName);

    print("\n========== AFTER REMOVE ==========");
    print(students);

    // ==============================
    // Remove Where
    // ==============================

    stdout.write("\nEnter First Letter To Remove : ");
    String letter = stdin.readLineSync()!;

    students.removeWhere((student) {
        return student.startsWith(letter);
    });

    print("\n========== AFTER REMOVE WHERE ==========");
    print(students);

    // ==============================
    // Second Set
    // ==============================

    Set<String> sectionB = {};

    stdout.write("\nHow many students in Section B? : ");
    int size = int.parse(stdin.readLineSync()!);

    for (int i = 1; i <= size; i++) {
        stdout.write("Enter Section B Student $i : ");
        sectionB.add(stdin.readLineSync()!);
    }

    print("\n========== SECTION B ==========");
    print(sectionB);

    // ==============================
    // Union
    // ==============================

    print("\n========== UNION ==========");
    print(students.union(sectionB));

    // ==============================
    // Intersection
    // ==============================

    print("\n========== INTERSECTION ==========");
    print(students.intersection(sectionB));

    // ==============================
    // Difference
    // ==============================

    print("\n========== DIFFERENCE ==========");
    print(students.difference(sectionB));

    // ==============================
    // Iteration
    // ==============================

    print("\n========== FOR-IN LOOP ==========");

    for (String student in students) {
        print(student);
    }

    print("\n========== FOREACH ==========");

    students.forEach((student) {
        print(student);
    });

    // ==============================
    // Convert To List
    // ==============================

    List<String> studentList = students.toList();

    print("\n========== CONVERT TO LIST ==========");
    print(studentList);

    // ==============================
    // Clear
    // ==============================

    stdout.write("\nDo you want to clear the set? (yes/no) : ");
    String choice = stdin.readLineSync()!;

    if (choice.toLowerCase() == "yes") {
        students.clear();

        print("\n========== AFTER CLEAR ==========");
        print(students);
        print("Is Empty : ${students.isEmpty}");
    } else {
        print("\nSet Not Cleared.");
    }
}