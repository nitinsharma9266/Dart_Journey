import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> main() async {
    Uri url = Uri.parse(
        'https://jsonplaceholder.typicode.com/users/1',
    );

    try {
        final response = await http.get(url);

        print("Status Code: ${response.statusCode}");

        if (response.statusCode == 200) {
            Map<String, dynamic> user =
                jsonDecode(response.body);

            print("\n========== USER PROFILE ==========");

            print("ID       : ${user["id"]}");
            print("Name     : ${user["name"]}");
            print("Username : ${user["username"]}");
            print("Email    : ${user["email"]}");
            print("Phone    : ${user["phone"]}");
            print("Website  : ${user["website"]}");

            print("City     : ${user["address"]["city"]}",);

            print("Company  : ${user["company"]["name"]}",);

            print("==================================");
        } else {
            print("❌ Request failed: ${response.statusCode}",);
        }
    } catch (e) {
        print("❌ Network Error: $e");
    }
}