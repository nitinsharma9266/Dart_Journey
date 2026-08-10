import 'dart:io';

class OrderService {

    Future<String> placeOrder(
        String product,
        int quantity,
    ) {

        return Future.delayed(
            Duration(seconds: 2),
            () {
                return "Order placed successfully";
            },
        );
    }
}

void main() {

    stdout.write("Enter Product Name : ");
    String product = stdin.readLineSync()!;

    stdout.write("Enter Quantity : ");
    int quantity = int.parse(
        stdin.readLineSync()!,
    );

    OrderService service = OrderService();

    print("\n⏳ Processing Order...");

    service.placeOrder(
        product,
        quantity,
    ).then((message) {

        print("\n✅ $message");
        print("Product  : $product");
        print("Quantity : $quantity");

    }).catchError((error) {

        print("\n❌ Order Failed.");
        print("Error: $error");

    });

    print("\n📱 App is still running...");
}