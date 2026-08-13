import 'dart:async';

void main() {

    StreamController<int> controller =
        StreamController<int>();

    StreamSubscription subscription =
        controller.stream.listen((number) {
            print("Received: $number");
        });

    controller.add(10);
    controller.add(20);

    subscription.pause();

    controller.add(30);
    controller.add(40);

    subscription.resume();

    controller.add(50);

    controller.close();
}