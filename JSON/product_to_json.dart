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

    Map<String, dynamic> toJson() {
        return {
            "id": id,
            "name": name,
            "price": price,
        };
    }
}

void main() {
    Product product = Product(
        101,
        "Laptop",
        55000,
    );

    Map<String, dynamic> data =
        product.toJson();

    String jsonData =
        jsonEncode(data);

    print("========== JSON DATA ==========");

    print(jsonData);

    print("===============================");
}