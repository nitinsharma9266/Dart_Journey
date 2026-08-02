class Notification {
    void sendMessage() {
        print("Sending Notification...");
    }
}
class WhatsApp extends Notification {

    @override
    void sendMessage() {
        print("📱 Sending WhatsApp Message...");
    }
}
class Email extends Notification {

    @override
    void sendMessage() {
        print("📧 Sending Email...");
    }
}
class SMS extends Notification {

    @override
    void sendMessage() {
        print("📩 Sending SMS...");
    }
}
void main() {
    WhatsApp w = WhatsApp();
    Email e = Email();
    SMS s = SMS();

    w.sendMessage();
    e.sendMessage();
    s.sendMessage();
}