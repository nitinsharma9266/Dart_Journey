import 'dart:io';

void main() {

    stdout.write("Enter Your Name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter Your Age: ");
    String age = stdin.readLineSync()!;

    File file = File("user.txt");

    file.writeAsStringSync(
        "Name: $name\nAge: $age",
    );

    print("\n✅ User data saved successfully.");
}