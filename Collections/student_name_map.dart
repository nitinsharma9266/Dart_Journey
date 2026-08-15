import 'dart:io';

void main() {

    List<String> names = [];

    stdout.write("How many students? ");

    int count = int.parse(
        stdin.readLineSync()!,
    );

    for (int i = 0; i < count; i++) {

        stdout.write(
            "Enter Student ${i + 1} Name: ",
        );

        String name = stdin.readLineSync()!;

        names.add(name);
    }

    List<String> upperCaseNames =
        names.map((name) {

        return name.toUpperCase();

    }).toList();

    print("\n========== STUDENT NAMES ==========");

    for (String name in upperCaseNames) {

        print(name);
    }
}