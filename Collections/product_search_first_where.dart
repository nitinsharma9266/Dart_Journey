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
}

void main() {

    List<Product> products = [
        Product(101, "Laptop", 55000),
        Product(102, "Mobile", 25000),
        Product(103, "Keyboard", 1500),
        Product(104, "Mouse", 800),
    ];

    stdout.write("Enter Product ID: ");

    int searchId = int.parse(
        stdin.readLineSync()!,
    );

    try {

        Product product = products.firstWhere(
            (product) {
                return product.id == searchId;
            },
        );

        print("\n========== PRODUCT FOUND ==========");
        print("ID    : ${product.id}");
        print("Name  : ${product.name}");
        print("Price : ₹${product.price}");
        print("===================================");

    } catch (e) {

        print("\n❌ Product Not Found.");
    }
}