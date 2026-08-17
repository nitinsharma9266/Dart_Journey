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

    stdout.write("Enter Your State: ");
    String state = stdin.readLineSync()!;

    Map<String, dynamic> userData = {
        "name": name,
        "age": age,
        "address": {
            "city": city,
            "state": state,
        },
    };

    String jsonData = jsonEncode(
        userData,
    );

    print("\n========== JSON RESPONSE ==========");
    print(jsonData);

    Map<String, dynamic> decodedData =
        jsonDecode(jsonData);

    Map<String, dynamic> address =
        decodedData["address"];

    print("\n========== USER PROFILE ==========");

    print(
        "Name  : ${decodedData["name"]}",
    );

    print(
        "Age   : ${decodedData["age"]}",
    );

    print(
        "City  : ${address["city"]}",
    );

    print(
        "State : ${address["state"]}",
    );

    print("===================================");
}