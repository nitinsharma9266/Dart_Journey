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
    List<Product> products = [];

    stdout.write("How many products? ");

    int count = int.parse(
        stdin.readLineSync()!,
    );

    for (int i = 0; i < count; i++) {
        print("\nProduct ${i + 1}");

        stdout.write("Enter ID: ");
        int id = int.parse(stdin.readLineSync()!,);

        stdout.write("Enter Name: ");
        String name = stdin.readLineSync()!;

        stdout.write("Enter Price: ");
        double price = double.parse(stdin.readLineSync()!,);

        products.add(
            Product(
                id,
                name,
                price,
            ),
        );
    }

    List<Map<String, dynamic>> productList =
        products.map((product) {
            return product.toJson();
        }).toList();

    String jsonData =
        jsonEncode(productList);

    print("\n========== PRODUCTS JSON ==========");

    print(jsonData);

    print("===================================");
}