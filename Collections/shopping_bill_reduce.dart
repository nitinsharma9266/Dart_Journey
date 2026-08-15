import 'dart:io';

void main() {

    List<double> prices = [];

    stdout.write("How many products do you want to add? ");

    int count = int.parse(
        stdin.readLineSync()!,
    );

    for (int i = 0; i < count; i++) {

        stdout.write(
            "Enter Product ${i + 1} Price: ",
        );

        double price = double.parse(
            stdin.readLineSync()!,
        );

        prices.add(price);
    }

    if (prices.isEmpty) {
        print("\n❌ No products added.");
        return;
    }

    double total = prices.reduce((a, b) {
        return a + b;
    });

    print("\n========== BILL ==========");

    for (int i = 0; i < prices.length; i++) {

        print(
            "Product ${i + 1}: ₹${prices[i]}",
        );
    }

    print("---------------------------");
    print("Total Bill: ₹$total");
    print("===========================");
}