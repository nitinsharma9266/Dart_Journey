import 'dart:io';

mixin Camera {

    void takePhoto() {
        print("\n📸 Photo Captured Successfully.");
    }
}

mixin LiveStreaming {

    void startLive() {
        print("\n🔴 Live Stream Started.");
    }
}

mixin Chat {

    void sendMessage(String message) {
        print("\n💬 Message Sent : $message");
    }
}

mixin Location {

    void shareLocation() {
        print("\n📍 Current Location Shared.");
    }
}

class ContentCreator
    with Camera, LiveStreaming, Chat, Location {

    String creatorName = "";
    String platform = "";

    void inputDetails() {

        stdout.write("Enter Creator Name : ");
        creatorName = stdin.readLineSync()!;

        stdout.write("Enter Platform (Instagram / YouTube / Facebook): ");
        platform = stdin.readLineSync()!;
    }

    void showProfile() {

        print("\n========== CREATOR PROFILE ==========");
        print("Creator Name : $creatorName");
        print("Platform     : $platform");
        print("=====================================");
    }
}

void main() {

    ContentCreator creator = ContentCreator();

    creator.inputDetails();

    while (true) {

        print("\n========== CONTENT CREATOR PANEL ==========");
        print("1. Show Profile");
        print("2. Take Photo");
        print("3. Start Live");
        print("4. Send Message");
        print("5. Share Location");
        print("6. Exit");

        stdout.write("Enter Choice : ");
        int choice = int.parse(stdin.readLineSync()!);

        switch (choice) {

            case 1:
                creator.showProfile();
                break;

            case 2:
                creator.takePhoto();
                break;

            case 3:
                creator.startLive();
                break;

            case 4:
                stdout.write("Enter Message : ");
                String message = stdin.readLineSync()!;
                creator.sendMessage(message);
                break;

            case 5:
                creator.shareLocation();
                break;

            case 6:
                print("\n🙏 Thank You...");
                return;

            default:
                print("\n❌ Invalid Choice.");
        }

        print("\nPress Enter To Continue...");
        stdin.readLineSync();
    }
}