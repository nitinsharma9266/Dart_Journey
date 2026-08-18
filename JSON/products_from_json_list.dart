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
        return Product(
            json["id"],
            json["name"],
            json["price"].toDouble(),
        );
    }
}

void main() {
    String jsonData = '''
    [
        {
            "id": 101,
            "name": "Laptop",
            "price": 55000
        },
        {
            "id": 102,
            "name": "Mobile",
            "price": 25000
        },
        {
            "id": 103,
            "name": "Keyboard",
            "price": 1500
        }
    ]
    ''';

    List<dynamic> data =
        jsonDecode(jsonData);

    List<Product> products =
        data.map((item) {
            return Product.fromJson(item);
        }).toList();

    print("========== PRODUCTS ==========");

    for (Product product in products) {
        print("ID    : ${product.id}");
        print("Name  : ${product.name}");
        print("Price : ₹${product.price}");
        print("--------------------------------");
    }
}