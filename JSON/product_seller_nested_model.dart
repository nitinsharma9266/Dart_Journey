import 'dart:convert';
import 'dart:io';

class Seller {
    int id;
    String name;
    String city;

    Seller(
        this.id,
        this.name,
        this.city,
    );

    factory Seller.fromJson(
        Map<String, dynamic> json,
    ) {
        return Seller(
            json["id"],
            json["name"],
            json["city"],
        );
    }

    Map<String, dynamic> toJson() {
        return {
            "id": id,
            "name": name,
            "city": city,
        };
    }
}

class Product {
    int id;
    String name;
    double price;
    Seller seller;

    Product(
        this.id,
        this.name,
        this.price,
        this.seller,
    );

    factory Product.fromJson(
        Map<String, dynamic> json,
    ) {
        return Product(
            json["id"],
            json["name"],
            json["price"].toDouble(),
            Seller.fromJson(json["seller"]),
        );
    }

    Map<String, dynamic> toJson() {
        return {
            "id": id,
            "name": name,
            "price": price,
            "seller": seller.toJson(),
        };
    }
}

void main() {
    stdout.write("Enter Product ID: ");
    int productId = int.parse(
        stdin.readLineSync()!,
    );

    stdout.write("Enter Product Name: ");
    String productName =
        stdin.readLineSync()!;

    stdout.write("Enter Product Price: ");
    double price = double.parse(
        stdin.readLineSync()!,
    );

    stdout.write("Enter Seller ID: ");
    int sellerId = int.parse(
        stdin.readLineSync()!,
    );

    stdout.write("Enter Seller Name: ");
    String sellerName =
        stdin.readLineSync()!;

    stdout.write("Enter Seller City: ");
    String sellerCity =
        stdin.readLineSync()!;

    Seller seller = Seller(
        sellerId,
        sellerName,
        sellerCity,
    );

    Product product = Product(
        productId,
        productName,
        price,
        seller,
    );

    Map<String, dynamic> productMap =
        product.toJson();

    String jsonData =
        jsonEncode(productMap);

    print("\n========== PRODUCT JSON ==========");
    print(jsonData);
    print("==================================");

    Map<String, dynamic> decodedData =
        jsonDecode(jsonData);

    Product decodedProduct =
        Product.fromJson(decodedData);

    print("\n========== PRODUCT DETAILS ==========");

    print(
        "Product ID   : ${decodedProduct.id}",
    );

    print(
        "Product Name : ${decodedProduct.name}",
    );

    print(
        "Price        : ₹${decodedProduct.price}",
    );

    print(
        "Seller ID    : ${decodedProduct.seller.id}",
    );

    print(
        "Seller Name  : ${decodedProduct.seller.name}",
    );

    print(
        "Seller City  : ${decodedProduct.seller.city}",
    );

    print("======================================");
}