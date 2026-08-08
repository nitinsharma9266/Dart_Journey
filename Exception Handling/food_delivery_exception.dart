import 'dart:io';

void placeOrder(String foodName, int quantity, double price) {

    if (foodName.trim().isEmpty) {
        throw Exception("Food name cannot be empty.");
    }

    if (quantity <= 0) {
        throw Exception("Quantity must be greater than 0.");
    }

    if (price <= 0) {
        throw Exception("Price must be greater than 0.");
    }

    double total = quantity * price;

    print("\n========== ORDER ==========");
    print("Food     : $foodName");
    print("Quantity : $quantity");
    print("Price    : ₹$price");
    print("Total    : ₹$total");
    print("===========================");
}

void main() {

    try {

        stdout.write("Enter Food Name : ");
        String food = stdin.readLineSync()!;

        stdout.write("Enter Quantity : ");
        int quantity = int.parse(
            stdin.readLineSync()!
        );

        stdout.write("Enter Food Price : ");
        double price = double.parse(
            stdin.readLineSync()!
        );

        placeOrder(food, quantity, price);

    } catch (e) {

        print("\n❌ Order Failed.");
        print("Reason: $e");

    } finally {

        print("\nTransaction Completed.");
    }
}