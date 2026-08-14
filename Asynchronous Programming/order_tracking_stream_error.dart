import 'dart:async';
import 'dart:io';

void main() {
    StreamController<String> controller =
        StreamController<String>();

    controller.stream.listen(
        (status) {
            print("📦 Order Status: $status");
        },
        onError: (error) {
            print("❌ Error: $error");
        },
        onDone: () {
            print("✅ Order Tracking Completed.");
        },
    );

    print("========== ORDER TRACKING ==========");

    stdout.write("Enter Order ID: ");
    String orderId = stdin.readLineSync()!;

    print("\nTracking Order: $orderId");

    stdout.write("Enter Order Status: ");
    String status = stdin.readLineSync()!;

    if (status.toLowerCase() == "error") {
        controller.addError(
            "Unable to fetch order status.",
        );
    } else {
        controller.add(status);
    }

    controller.close();
}