import 'dart:io';

Future<void> main() async {

    File file = File("async_user.txt");

    if (await file.exists()) {

        String data =
            await file.readAsString();

        print("========== USER DATA ==========");

        print(data);

        print("===============================");

    } else {

        print("❌ File does not exist.");
    }
}