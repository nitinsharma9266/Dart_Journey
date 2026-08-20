import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> main() async {
    Uri url = Uri.parse(
        'https://jsonplaceholder.typicode.com/posts',
    );

    Map<String, dynamic> product = {
        "name": "Laptop",
        "price": 55000,
    };

    String jsonData =
        jsonEncode(product);

    try {
        final response = await http.post(
            url,
            headers: {
                "Content-Type": "application/json",
            },
            body: jsonData,
        );

        print("Status Code: ${response.statusCode}");

        print("\n========== SERVER RESPONSE ==========");
        print(response.body);
        print("=====================================");
    } catch (e) {
        print("❌ Network Error: $e");
    }
}