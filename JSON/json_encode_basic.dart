import 'dart:convert';

void main() {
    Map<String, dynamic> user = {
        "name": "Nitin",
        "age": 18,
        "city": "Hardoi",
    };

    String jsonData =
        jsonEncode(user);

    print(jsonData);
}

/*

import 'dart:convert';
import 'dart:io';

void main() {
    stdout.write("Enter Your Name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter Your Age: ");
    int age = int.parse(
        stdin.readLineSync()!,
    );

    Map<String, dynamic> user = {
        "name": name,
        "age": age,
    };

    String jsonData =
        jsonEncode(user);

    print("\n========== JSON DATA ==========");
    print(jsonData);
    print("===============================");
}

*/
