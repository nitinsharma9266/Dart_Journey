import 'dart:async';

void main() {

    StreamController<int> controller =
        StreamController<int>();

    controller.stream.listen(
        (number) {
            print("Received: $number");
        },
        onError: (error) {
            print("❌ Error: $error");
        },
    );

    controller.add(10);
    controller.add(20);

    controller.addError(
        "Server connection failed",
    );

    controller.add(30);

    controller.close();
}