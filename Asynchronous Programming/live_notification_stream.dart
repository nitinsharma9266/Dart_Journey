import 'dart:async';
import 'dart:io';

class NotificationService {
    StreamController<String> controller =
        StreamController<String>();

    void sendNotification(String message) {
        controller.add(message);
    }

    void close() {
        controller.close();
    }
}

void main() {

    NotificationService service =
        NotificationService();

    service.controller.stream.listen((message) {
        print("🔔 Notification: $message");
    });

    print("========== Notification System ==========");

    stdout.write("Enter Notification 1 : ");
    String message1 = stdin.readLineSync()!;

    service.sendNotification(message1);

    stdout.write("Enter Notification 2 : ");
    String message2 = stdin.readLineSync()!;

    service.sendNotification(message2);

    stdout.write("Enter Notification 3 : ");
    String message3 = stdin.readLineSync()!;

    service.sendNotification(message3);

    service.close();
}