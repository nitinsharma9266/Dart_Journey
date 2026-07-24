import 'dart:io';

void main() {
    List<String> students = [];

    print("========== ADD STUDENTS ==========");

    stdout.write("How many students do you want to add? : ");
    int n = int.parse(stdin.readLineSync()!);

    for (int i = 1; i <= n; i++) {
        stdout.write("Enter Student $i : ");
        students.add(stdin.readLineSync()!);
    }

    print("\n========== ORIGINAL LIST ==========");
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
    // Access by Index
    // ==============================

    stdout.write("\nEnter Index To View : ");
    int index = int.parse(stdin.readLineSync()!);

    if (index >= 0 && index < students.length) {
        print("Student : ${students[index]}");
    } else {
        print("Invalid Index");
    }

    // ==============================
    // Update
    // ==============================

    stdout.write("\nEnter Index To Update : ");
    int updateIndex = int.parse(stdin.readLineSync()!);

    if (updateIndex >= 0 && updateIndex < students.length) {
        stdout.write("Enter New Name : ");
        students[updateIndex] = stdin.readLineSync()!;
    }

    print("\n========== AFTER UPDATE ==========");
    print(students);

    // ==============================
    // Add Methods
    // ==============================

    stdout.write("\nEnter One Student To Add : ");
    students.add(stdin.readLineSync()!);

    stdout.write("\nEnter Position To Insert : ");
    int position = int.parse(stdin.readLineSync()!);

    stdout.write("Enter Student Name : ");
    String insertName = stdin.readLineSync()!;

    if (position >= 0 && position <= students.length) {
        students.insert(position, insertName);
    }

    stdout.write("\nHow Many More Students To Add? : ");
    int m = int.parse(stdin.readLineSync()!);

    List<String> newStudents = [];

    for (int i = 1; i <= m; i++) {
        stdout.write("Enter Student $i : ");
        newStudents.add(stdin.readLineSync()!);
    }

    students.addAll(newStudents);

    stdout.write("\nInsert All At Position : ");
    int insertAllPosition = int.parse(stdin.readLineSync()!);

    if (insertAllPosition >= 0 &&
        insertAllPosition <= students.length) {
        students.insertAll(insertAllPosition, [
            "AAA",
            "BBB",
        ]);
    }

    print("\n========== AFTER ADD ==========");
    print(students);

    // ==============================
    // Search
    // ==============================

    stdout.write("\nEnter Student To Search : ");
    String search = stdin.readLineSync()!;

    print("Contains     : ${students.contains(search)}");
    print("Index Of     : ${students.indexOf(search)}");
    print("Last IndexOf : ${students.lastIndexOf(search)}");

    // ==============================
    // Remove Methods
    // ==============================

    stdout.write("\nEnter Student To Remove : ");
    String removeName = stdin.readLineSync()!;

    students.remove(removeName);

    stdout.write("Enter Index To Remove : ");
    int removeIndex = int.parse(stdin.readLineSync()!);

    if (removeIndex >= 0 &&
        removeIndex < students.length) {
        students.removeAt(removeIndex);
    }

    if (students.isNotEmpty) {
        students.removeLast();
    }

    if (students.length >= 2) {
        students.removeRange(0, 2);
    }

    print("\n========== AFTER REMOVE ==========");
    print(students);

    // ==============================
    // Where
    // ==============================

    print("\n========== WHERE ==========");

    List<String> filtered = students.where((student) {
        return student.startsWith("A");
    }).toList();

    print(filtered);

    // ==============================
    // Map
    // ==============================

    print("\n========== MAP ==========");

    List<String> upper = students.map((student) {
        return student.toUpperCase();
    }).toList();

    print(upper);

    // ==============================
    // Any / Every
    // ==============================

    print("\n========== ANY ==========");
    print(students.any((student) {
        return student == "Rahul";
    }));

    print("\n========== EVERY ==========");
    print(students.every((student) {
        return student.length >= 3;
    }));

    // ==============================
    // Take / Skip
    // ==============================

    print("\n========== TAKE ==========");
    print(students.take(2).toList());

    print("\n========== SKIP ==========");
    print(students.skip(2).toList());

    // ==============================
    // Sort
    // ==============================

    students.sort();

    print("\n========== SORT ==========");
    print(students);

    // ==============================
    // Reverse
    // ==============================

    print("\n========== REVERSED ==========");
    print(students.reversed.toList());

    // ==============================
    // Sublist
    // ==============================

    if (students.length >= 2) {
        print("\n========== SUBLIST ==========");
        print(students.sublist(0, 2));
    }

    // ==============================
    // Shuffle
    // ==============================

    students.shuffle();

    print("\n========== SHUFFLE ==========");
    print(students);

    // ==============================
    // Loops
    // ==============================

    print("\n========== FOR LOOP ==========");

    for (int i = 0; i < students.length; i++) {
        print(students[i]);
    }

    print("\n========== FOR-IN LOOP ==========");

    for (String student in students) {
        print(student);
    }

    print("\n========== FOREACH ==========");

    students.forEach((student) {
        print(student);
    });

    print("\n========== ASMAP ==========");

    students.asMap().forEach((index, value) {
        print("$index : $value");
    });

    // ==============================
    // Clear
    // ==============================

    stdout.write("\nDo You Want To Clear List? (yes/no) : ");
    String choice = stdin.readLineSync()!;

    if (choice.toLowerCase() == "yes") {
        students.clear();

        print("\n========== AFTER CLEAR ==========");
        print(students);
        print("Is Empty : ${students.isEmpty}");
    } else {
        print("List Not Cleared");
    }
}