import 'dart:io';

void main() {

    File file = File("user.txt");

    if (file.existsSync()) {

        String data = file.readAsStringSync();

        print("========== USER DATA ==========");
        print(data);
        print("===============================");

    } else {

        print("❌ File does not exist.");
    }
}