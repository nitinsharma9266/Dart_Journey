import 'dart:io';

void main() {

    File file = File("user.txt");

    if (!file.existsSync()) {
        print("❌ File does not exist.");
        return;
    }

    String data = file.readAsStringSync();

    data = data.replaceFirst(
        "Age: 20",
        "Age: 19",
    );

    file.writeAsStringSync(data);

    print("✅ Data updated successfully.");
}