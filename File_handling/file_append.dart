import 'dart:io';

void main() {

    File file = File("user.txt");

    file.writeAsStringSync(
        "\nPhone: 9876543210",
        mode: FileMode.append,
    );

    print("✅ New data added successfully.");
}