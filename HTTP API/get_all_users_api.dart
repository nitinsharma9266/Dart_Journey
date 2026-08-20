import 'dart:convert';

import 'package:http/http.dart' as http;

import 'User-model.dart';

Future<void> main() async {
    Uri url = Uri.parse(
        'https://jsonplaceholder.typicode.com/users',
    );

    try {
        final response = await http.get(url);

        print("Status Code: ${response.statusCode}");

        if (response.statusCode == 200) {
            List<dynamic> data =
                jsonDecode(response.body);

            List<User> users =
                data.map((item) {
                    return User.fromJson(item);
                }).toList();

            print("\n========== ALL USERS ==========");

            for (User user in users) {
                print("ID       : ${user.id}");
                print("Name     : ${user.name}");
                print("Username : ${user.username}");
                print("Email    : ${user.email}");
                print("City     : ${user.address.city}");
                print(
                    "Company  : ${user.company.name}",
                );

                print("-------------------------------");
            }

            print("Total Users: ${users.length}");
        } else {
            print(
                "❌ Request failed: ${response.statusCode}",
            );
        }
    } catch (e) {
        print("❌ Network Error: $e");
    }
}