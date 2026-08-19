import 'dart:convert';

import 'package:http/http.dart' as http;

import 'user_model.dart';

Future<void> main() async {
    Uri url = Uri.parse(
        'https://jsonplaceholder.typicode.com/users/1',
    );

    try {
        final response = await http.get(url);

        print("Status Code: ${response.statusCode}");

        if (response.statusCode == 200) {
            Map<String, dynamic> data =
                jsonDecode(response.body);

            User user =User.fromJson(data);

            print("\n========== USER ==========");

            print("ID       : ${user.id}");
            print("Name     : ${user.name}");
            print("Username : ${user.username}");
            print("Email    : ${user.email}");

            print("==========================");
        } else {
            print(
                "❌ Request failed: ${response.statusCode}",
            );
        }
    } catch (e) {
        print("❌ Network Error: $e");
    }
}