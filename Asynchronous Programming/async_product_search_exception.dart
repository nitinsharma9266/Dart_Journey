import 'dart:io';

Future<String> searchProduct(
    String product,
) async {

    await Future.delayed(
        Duration(seconds: 2),
    );

    if (product.trim().isEmpty) {
        throw Exception(
            "Product name cannot be empty.",
        );
    }

    List<String> products = [
        "Laptop",
        "Mobile",
        "Keyboard",
        "Mouse",
        "Headphones",
    ];

    bool found = false;

    for (String item in products) {

        if (item.toLowerCase() ==
            product.toLowerCase()) {

            found = true;
            break;
        }
    }

    if (!found) {
        throw Exception(
            "Product not found.",
        );
    }

    return "$product is available.";
}

Future<void> main() async {

    try {

        stdout.write("Enter Product Name : ");

        String product =
            stdin.readLineSync()!;

        print("\n🔎 Searching...");

        String result =
            await searchProduct(product);

        print("\n✅ $result");

    } catch (e) {

        print("\n❌ Search Failed.");
        print("Reason: $e");
    }
}