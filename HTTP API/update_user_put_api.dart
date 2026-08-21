import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> main() async {
    Uri url = Uri.parse(
        'https://jsonplaceholder.typicode.com/users/1',
    );

    Map<String, dynamic> updatedUser = {
        "name": "Nitin Sharma",
        "username": "nitin",
        "email": "Sharma@example.com",
    };

    String jsonData =
        jsonEncode(updatedUser);

    try {
        final response = await http.put(
            url,
            headers: {
                "Content-Type": "application/json",
            },
            body: jsonData,
        );

        print(
            "Status Code: ${response.statusCode}",
        );

        if (response.statusCode == 200) {
            Map<String, dynamic> result =
                jsonDecode(response.body);

            print("\n========== UPDATED USER ==========");

            print("ID       : ${result["id"]}");
            print("Name     : ${result["name"]}");
            print("Username : ${result["username"]}");
            print("Email    : ${result["email"]}");

            print("==================================");
        } else {
            print("❌ Update failed.");
        }
    } catch (e) {
        print("❌ Network Error: $e");
    }
}