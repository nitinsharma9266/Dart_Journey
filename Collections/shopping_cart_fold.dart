import 'dart:io';

void main() {

    List<double> prices = [];

    stdout.write("How many products do you want to buy? ");

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
        print("\n❌ Cart is empty.");
        return;
    }

    double total = prices.fold(
        0.0,
        (sum, price) {
            return sum + price;
        },
    );

    stdout.write("\nEnter Discount Percentage: ");

    double discount = double.parse(
        stdin.readLineSync()!,
    );

    double discountAmount =
        total * discount / 100;

    double finalAmount =
        total - discountAmount;

    print("\n========== SHOPPING BILL ==========");

    print("Total Amount   : ₹$total");
    print("Discount       : $discount%");
    print("Discount Amount: ₹$discountAmount");
    print("Final Amount   : ₹$finalAmount");

    print("===================================");
}