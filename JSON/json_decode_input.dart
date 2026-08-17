import 'dart:convert';
import 'dart:io';

void main() {
    stdout.write("Enter Your Name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter Your Age: ");
    int age = int.parse(
        stdin.readLineSync()!,
    );

    stdout.write("Enter Your City: ");
    String city = stdin.readLineSync()!;

    String jsonData = '''
    {
        "name": "$name",
        "age": $age,
        "city": "$city"
    }
    ''';

    Map<String, dynamic> user =
        jsonDecode(jsonData);

    print("\n========== USER DATA ==========");

    print("Name: ${user["name"]}");
    print("Age: ${user["age"]}");
    print("City: ${user["city"]}");

    print("===============================");
}