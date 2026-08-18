import 'dart:convert';
import 'dart:io';

class Product {
    int id;
    String name;
    double price;

    Product(
        this.id,
        this.name,
        this.price,
    );

    Map<String, dynamic> toJson() {
        return {
            "id": id,
            "name": name,
            "price": price,
        };
    }
}

void main() {
    stdout.write("Enter Product ID: ");
    int id = int.parse(
        stdin.readLineSync()!,
    );

    stdout.write("Enter Product Name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter Product Price: ");
    double price = double.parse(
        stdin.readLineSync()!,
    );

    Product product = Product(
        id,
        name,
        price,
    );

    Map<String, dynamic> productMap =
        product.toJson();

    String jsonData =
        jsonEncode(productMap);

    print("\n========== PRODUCT JSON ==========");
    print(jsonData);
    print("==================================");
}