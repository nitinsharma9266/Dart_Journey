import 'dart:async';

void main() {

    StreamController<double> controller =
        StreamController<double>();

    controller.stream.listen((temperature) {
        print("🌡️ Temperature: $temperature°C");
    });

    controller.add(25.5);
    controller.add(26.2);
    controller.add(27.8);
    controller.add(28.4);

    controller.close();
}