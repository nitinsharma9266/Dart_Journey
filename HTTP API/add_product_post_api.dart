import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> main() async {
    stdout.write("Enter Product Name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter Product Price: ");
    double price = double.parse(stdin.readLineSync()!);

    Map<String, dynamic> product = {
        "name": name,
        "price": price,
    };

    String jsonData =
        jsonEncode(product);

    Uri url = Uri.parse(
        'https://jsonplaceholder.typicode.com/posts',
    );

    try {
        final response = await http.post(
            url,
            headers: {
                "Content-Type": "application/json",
            },
            body: jsonData,
        );

        print(
            "\nStatus Code: ${response.statusCode}",
        );

        if (response.statusCode == 201) {
            print("\n========== PRODUCT CREATED ==========");

            Map<String, dynamic> result =
                jsonDecode(response.body);

            print("ID    : ${result["id"]}");
            print("Name  : ${result["name"]}");
            print("Price : ₹${result["price"]}");

            print("=====================================");
        } else {
            print("❌ Product creation failed.");
        }
    } catch (e) {
        print("❌ Network Error: $e");
    }
}