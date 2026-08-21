import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> main() async {
    Uri url = Uri.parse(
        'https://jsonplaceholder.typicode.com/users/9999',
    );

    try {
        final response = await http.get(url);

        print(
            "Status Code: ${response.statusCode}",
        );

        if (response.statusCode == 200) {
            Map<String, dynamic> user =
                jsonDecode(response.body);

            print("\n========== USER ==========");

            print("ID    : ${user["id"]}");
            print("Name  : ${user["name"]}");
            print("Email : ${user["email"]}");

            print("==========================");
        } else if (response.statusCode == 404) {
            print(
                "❌ User Not Found",
            );
        } else if (response.statusCode == 500) {
            print(
                "❌ Server Error",
            );
        } else {
            print(
                "❌ Request Failed: ${response.statusCode}",
            );
        }
    } catch (e) {
        print(
            "❌ Network Error: $e",
        );
    }
}