import 'dart:io';

Future<void> main() async {

    File file = File("async_user.txt");

    await file.writeAsString(
        "\nNew Data Added",
        mode: FileMode.append,
    );

    print("✅ New data appended successfully.");
}