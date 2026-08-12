import 'dart:async';
import 'dart:io';

class OrderService {
    StreamController<String> controller =
        StreamController<String>();

    void updateStatus(String status) {
        controller.add(status);
    }

    void close() {
        controller.close();
    }
}

void main() {

    OrderService orderService =
        OrderService();

    orderService.controller.stream.listen((status) {
        print("\n📦 Order Status: $status");
    });

    print("========== ORDER TRACKING ==========");

    stdout.write("Enter Order ID : ");
    String orderId = stdin.readLineSync()!;

    print("\nTracking Order: $orderId");

    stdout.write("Enter Status 1 : ");
    String status1 = stdin.readLineSync()!;

    orderService.updateStatus(status1);

    stdout.write("Enter Status 2 : ");
    String status2 = stdin.readLineSync()!;

    orderService.updateStatus(status2);

    stdout.write("Enter Status 3 : ");
    String status3 = stdin.readLineSync()!;

    orderService.updateStatus(status3);

    orderService.close();
}