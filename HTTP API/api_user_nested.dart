import 'dart:convert';

import 'package:http/http.dart' as http;

import 'usermodel.dart';

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

            User user =
                User.fromJson(data);

            print("\n========== USER PROFILE ==========");

            print("ID       : ${user.id}");
            print("Name     : ${user.name}");
            print("Username : ${user.username}");
            print("Email    : ${user.email}");

            print("\n----- Address -----");
            print("Street   : ${user.address.street}");
            print("City     : ${user.address.city}");
            print("Zip Code : ${user.address.zipcode}");

            print("\n----- Company -----");
            print("Company  : ${user.company.name}");

            print("==================================");
        } else {
            print(
                "❌ Request failed: ${response.statusCode}",
            );
        }
    } catch (e) {
        print("❌ Network Error: $e");
    }
}