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

    factory Product.fromJson(Map<String, dynamic> json) {
        return Product(
            json["id"],
            json["name"],
            json["price"].toDouble(),
        );
    }
}

void main() {
    String jsonData = '''
    {
        "id": 101,
        "name": "Laptop",
        "price": 55000
    }
    ''';

    Map<String, dynamic> data =
        jsonDecode(jsonData);

    Product product =
        Product.fromJson(data);

    print("========== PRODUCT ==========");

    print("ID    : ${product.id}");
    print("Name  : ${product.name}");
    print("Price : ₹${product.price}");

    print("=============================");
}