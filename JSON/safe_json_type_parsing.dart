import 'dart:convert';

class Product {
    int id;
    String name;
    double price;

    Product(
        this.id,
        this.name,
        this.price,
    );

    factory Product.fromJson(
        Map<String, dynamic> json,
    ) {
        double safePrice = 0.0;

        if (json["price"] is num) {
            safePrice =(json["price"] as num).toDouble();
        } else if (json["price"] is String) {
            safePrice =double.tryParse(json["price"],) ?? 0.0;
        }

        return Product(
            json["id"] ?? 0,
            json["name"] ?? "Unknown Product",
            safePrice,
        );
    }
}

void main() {
    String jsonData = '''
    {
        "id": 101,
        "name": "Laptop",
        "price": "55000"
    }
    ''';

    Map<String, dynamic> data =jsonDecode(jsonData);

    Product product = Product.fromJson(data);

    print("========== PRODUCT ==========");

    print("ID    : ${product.id}");
    print("Name  : ${product.name}");
    print("Price : ₹${product.price}");

    print("=============================");
}