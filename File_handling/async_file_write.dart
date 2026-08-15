import 'dart:io';

Future<void> main() async {

    File file = File("async_user.txt");

    await file.writeAsString(
        "Name: Nitin\nAge: 18",
    );

    print("✅ Data written successfully.");
}