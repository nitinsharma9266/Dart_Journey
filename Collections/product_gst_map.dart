import 'dart:io';

void main() {

    List<double> prices = [];

    print("Enter prices of 5 products:");

    for (int i = 0; i < 5; i++) {

        stdout.write("Enter Product ${i + 1} Price: ");

        double price = double.parse(
            stdin.readLineSync()!,
        );

        prices.add(price);
    }

    List<double> finalPrices = prices.map((price) {

        return price + (price * 0.18);

    }).toList();

    print("\n========== FINAL PRICES ==========");

    for (int i = 0; i < finalPrices.length; i++) {

        print(
            "Product ${i + 1}: ₹${finalPrices[i]}",
        );
    }
}