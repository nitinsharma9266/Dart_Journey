import 'dart:async';
import 'dart:io';

void main() {

    StreamController<String> controller =
        StreamController<String>.broadcast();

    controller.stream.listen((message) {
        print("📱 Home Screen: $message");
    });

    controller.stream.listen((message) {
        print("🔔 Notification Screen: $message");
    });

    print("========== Notification System ==========");

    stdout.write("Enter Notification : ");
    String message = stdin.readLineSync()!;

    controller.add(message);

    controller.close();
}