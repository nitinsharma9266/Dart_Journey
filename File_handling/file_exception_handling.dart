import 'dart:io';

Future<void> main() async {

    try {

        File file = File("async_user.txt");

        String data =
            await file.readAsString();

        print("========== FILE DATA ==========");

        print(data);

        print("===============================");

    } catch (e) {

        print("❌ File operation failed.");
        print("Error: $e");
    }
}