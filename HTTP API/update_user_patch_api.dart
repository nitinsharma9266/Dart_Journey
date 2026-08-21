import 'dart:convert';

import 'package:http/http.dart' as http;
import 'update_user_put_api.dart';

Future<void> main() async {
    Uri url = Uri.parse(
        'https://jsonplaceholder.typicode.com/users/1',
    );

    Map<String, dynamic> updateData = {
        "email": "nitin@example.com",
    };

    String jsonData =
        jsonEncode(updateData);

    try {
        final response = await http.patch(
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

            print("ID    : ${result["id"]}");
            print("Name  : ${result["name"]}");
            print("Email : ${result["email"]}");

            print("==================================");
        } else {
            print("❌ Update failed.");
        }
    } catch (e) {
        print("❌ Network Error: $e");
    }
}