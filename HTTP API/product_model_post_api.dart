import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class Product {
    String name;
    double price;

    Product(
        this.name,
        this.price,
    );

    Map<String, dynamic> toJson() {
        return {
            "name": name,
            "price": price,
        };
    }
}

Future<void> main() async {
    stdout.write("Enter Product Name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter Product Price: ");
    double price = double.parse(stdin.readLineSync()!);

    Product product = Product(
        name,
        price,
    );

    Map<String, dynamic> productData =
        product.toJson();

    String jsonData =
        jsonEncode(productData);

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
            Map<String, dynamic> result =jsonDecode(response.body);

            print("\n========== CREATED PRODUCT ==========");

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