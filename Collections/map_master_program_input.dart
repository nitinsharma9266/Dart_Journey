import 'dart:io';

void main() {
    Map<int, Map<String, dynamic>> students = {};

    print("========== STUDENT DATABASE ==========");

    stdout.write("How many students do you want to add? : ");
    int totalStudents = int.parse(stdin.readLineSync()!);

    for (int i = 1; i <= totalStudents; i++) {
        print("\nEnter Details Of Student $i");

        stdout.write("ID : ");
        int id = int.parse(stdin.readLineSync()!);

        stdout.write("Name : ");
        String name = stdin.readLineSync()!;

        stdout.write("Age : ");
        int age = int.parse(stdin.readLineSync()!);

        stdout.write("Course : ");
        String course = stdin.readLineSync()!;

        stdout.write("Marks : ");
        double marks = double.parse(stdin.readLineSync()!);

        students[id] = {
            "name": name,
            "age": age,
            "course": course,
            "marks": marks,
        };
    }

    print("\n========== ALL STUDENTS ==========");

    students.forEach((id, data) {
        print("ID : $id");
        print("Name : ${data["name"]}");
        print("Age : ${data["age"]}");
        print("Course : ${data["course"]}");
        print("Marks : ${data["marks"]}");
        print("----------------------------");
    });

    print("\n========== MAP PROPERTIES ==========");

    print("Length      : ${students.length}");
    print("Is Empty    : ${students.isEmpty}");
    print("Is NotEmpty : ${students.isNotEmpty}");

    print("\n========== KEYS ==========");
    print(students.keys);

    print("\n========== VALUES ==========");
    print(students.values);

    print("\n========== ENTRIES ==========");
    print(students.entries);

    print("\n========== CONTAINS KEY ==========");

    stdout.write("Enter ID To Search : ");
    int searchId = int.parse(stdin.readLineSync()!);

    print(students.containsKey(searchId));

    print("\n========== CONTAINS VALUE ==========");

    stdout.write("Enter Name To Search : ");
    String searchName = stdin.readLineSync()!;

    bool found = false;

    students.forEach((id, data) {
        if (data["name"] == searchName) {
            found = true;
        }
    });

    print(found);

    print("\n========== PUT IF ABSENT ==========");

    stdout.write("Enter New Student ID : ");
    int newId = int.parse(stdin.readLineSync()!);

    students.putIfAbsent(newId, () {
        stdout.write("Name : ");
        String name = stdin.readLineSync()!;

        stdout.write("Age : ");
        int age = int.parse(stdin.readLineSync()!);

        stdout.write("Course : ");
        String course = stdin.readLineSync()!;

        stdout.write("Marks : ");
        double marks = double.parse(stdin.readLineSync()!);

        return {
            "name": name,
            "age": age,
            "course": course,
            "marks": marks,
        };
    });

    print("\n========== AFTER PUT IF ABSENT ==========");

    students.forEach((id, data) {
        print("$id => $data");
    });

    
    // ==============================
    // UPDATE STUDENT
    // ==============================

    print("\n========== UPDATE STUDENT ==========");

    stdout.write("Enter Student ID To Update : ");
    int updateId = int.parse(stdin.readLineSync()!);

    if (students.containsKey(updateId)) {
        stdout.write("Enter New Name : ");
        students[updateId]!["name"] = stdin.readLineSync()!;

        stdout.write("Enter New Age : ");
        students[updateId]!["age"] =
            int.parse(stdin.readLineSync()!);

        stdout.write("Enter New Course : ");
        students[updateId]!["course"] =
            stdin.readLineSync()!;

        stdout.write("Enter New Marks : ");
        students[updateId]!["marks"] =
            double.parse(stdin.readLineSync()!);

        print("\nStudent Updated Successfully.");
    } else {
        print("Student ID Not Found.");
    }

    print("\n========== AFTER UPDATE ==========");

    students.forEach((id, data) {
        print("$id => $data");
    });

    // ==============================
    // UPDATE ALL
    // ==============================

    print("\n========== UPDATE ALL ==========");

    students.updateAll((id, data) {
        data["marks"] = data["marks"] + 5;
        return data;
    });

    students.forEach((id, data) {
        print("$id => $data");
    });

    // ==============================
    // REMOVE STUDENT
    // ==============================

    print("\n========== REMOVE STUDENT ==========");

    stdout.write("Enter Student ID To Remove : ");
    int removeId = int.parse(stdin.readLineSync()!);

    students.remove(removeId);

    students.forEach((id, data) {
        print("$id => $data");
    });

    // ==============================
    // REMOVE WHERE
    // ==============================

    print("\n========== REMOVE WHERE ==========");

    stdout.write("Remove Students Below Marks : ");
    double minMarks =
        double.parse(stdin.readLineSync()!);

    students.removeWhere((id, data) {
        return data["marks"] < minMarks;
    });

    students.forEach((id, data) {
        print("$id => $data");
    });

    // ==============================
    // ADD ALL
    // ==============================

    print("\n========== ADD ALL ==========");

    Map<int, Map<String, dynamic>> newStudents = {
        1001: {
            "name": "Rohan",
            "age": 20,
            "course": "BCA",
            "marks": 82.0,
        },
        1002: {
            "name": "Priya",
            "age": 21,
            "course": "B.Tech",
            "marks": 91.5,
        },
    };

    students.addAll(newStudents);

    students.forEach((id, data) {
        print("$id => $data");
    });

    // ==============================
    // FOR LOOP
    // ==============================

    print("\n========== FOR LOOP ==========");

    List<int> ids = students.keys.toList();

    for (int i = 0; i < ids.length; i++) {
        int id = ids[i];

        print("ID : $id");
        print("Name : ${students[id]!["name"]}");
        print("Age : ${students[id]!["age"]}");
        print("Course : ${students[id]!["course"]}");
        print("Marks : ${students[id]!["marks"]}");
        print("----------------------------");
    }

    // ==============================
    // FOR EACH
    // ==============================

    print("\n========== FOREACH ==========");

    students.forEach((id, data) {
        print("$id => $data");
    });

    // ==============================
    // MAP METHOD
    // ==============================

    print("\n========== MAP METHOD ==========");

    List<String> studentNames = students.entries.map((entry) {
        return entry.value["name"].toString().toUpperCase();
    }).toList();

    print(studentNames);

    // ==============================
    // HIGHEST MARKS
    // ==============================

    print("\n========== HIGHEST MARKS ==========");

    double highestMarks = -1;
    String topper = "";

    students.forEach((id, data) {
        if (data["marks"] > highestMarks) {
            highestMarks = data["marks"];
            topper = data["name"];
        }
    });

    print("Topper : $topper");
    print("Marks  : $highestMarks");

    // ==============================
    // LOWEST MARKS
    // ==============================

    print("\n========== LOWEST MARKS ==========");

    double lowestMarks = 1000;
    String weakStudent = "";

    students.forEach((id, data) {
        if (data["marks"] < lowestMarks) {
            lowestMarks = data["marks"];
            weakStudent = data["name"];
        }
    });

    print("Student : $weakStudent");
    print("Marks   : $lowestMarks");

    // ==============================
    // FINAL DATABASE
    // ==============================

    print("\n========== FINAL DATABASE ==========");

    students.forEach((id, data) {
        print("ID      : $id");
        print("Name    : ${data["name"]}");
        print("Age     : ${data["age"]}");
        print("Course  : ${data["course"]}");
        print("Marks   : ${data["marks"]}");
        print("----------------------------");
    });

    // ==============================
    // CLEAR
    // ==============================

    stdout.write("\nDo You Want To Clear Database? (yes/no) : ");

    String choice = stdin.readLineSync()!;

    if (choice.toLowerCase() == "yes") {
        students.clear();

        print("\n========== DATABASE CLEARED ==========");
        print(students);
        print("Length      : ${students.length}");
        print("Is Empty    : ${students.isEmpty}");
        print("Is NotEmpty : ${students.isNotEmpty}");
    } else {
        print("\nDatabase Not Cleared.");
    }

    print("\n========== PROGRAM FINISHED ==========");

}