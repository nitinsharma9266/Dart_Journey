import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> main() async {
    Uri url = Uri.parse(
        'https://jsonplaceholder.typicode.com/users/1',
    );

    try {
        final response = await http.delete(url);

        print(
            "Status Code: ${response.statusCode}",
        );

        if (response.statusCode == 200) {
            print("\n========== DELETE RESPONSE ==========");

            if (response.body.isNotEmpty) {
                Map<String, dynamic> result =
                    jsonDecode(response.body);

                print(result);
            } else {
                print("User deleted successfully.");
            }

            print("=====================================");
        } else {
            print("❌ Delete failed.");
        }
    } catch (e) {
        print("❌ Network Error: $e");
    }
}