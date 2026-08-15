import 'dart:io';

void main() {

    File file = File("user.txt");

    file.writeAsStringSync(
        "Name: Nitin\nAge: 18",
    );

    print("✅ Data written successfully.");
}