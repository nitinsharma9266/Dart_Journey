import 'dart:convert';

class Product {
    int id;
    String name;
    double price;
    String description;

    Product(
        this.id,
        this.name,
        this.price,
        this.description,
    );

    factory Product.fromJson(Map<String, dynamic> json,) {
        return Product(
            json["id"] ?? 0,
            json["name"] ?? "Unknown Product",
            (json["price"] ?? 0).toDouble(),
            json["description"] ?? "No description available",
        );
    }
}

void main() {
    String jsonData = '''
    {
        "id": 101,
        "name": "Laptop",
        "price": null
    }
    ''';

    Map<String, dynamic> data =jsonDecode(jsonData);

    Product product =Product.fromJson(data);

    print("========== PRODUCT ==========");

    print("ID          : ${product.id}");
    print("Name        : ${product.name}");
    print("Price       : ₹${product.price}");
    print(
        "Description : ${product.description}",
    );

    print("=============================");
}