import 'dart:convert';

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

    List<dynamic> products =
        jsonDecode(jsonData);

    print("========== PRODUCT LIST ==========");

    for (var product in products) {
        print("ID    : ${product["id"]}");
        print("Name  : ${product["name"]}");
        print("Price : ₹${product["price"]}");
        print("----------------------------------");
    }
}