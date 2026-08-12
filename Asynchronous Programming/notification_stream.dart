import 'dart:async';

void main() {

    StreamController<String> controller =
        StreamController<String>();

    int notificationCount = 0;

    controller.stream.listen((message) {

        notificationCount++;

        print(
            "🔔 Notification $notificationCount: $message",
        );
    });

    controller.add("New message received");
    controller.add("Your order has been shipped");
    controller.add("Your payment was successful");

    controller.close();
}