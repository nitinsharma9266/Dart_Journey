import 'dart:io';

mixin Camera {

    void takePhoto() {
        print("\n📷 Photo Captured Successfully.");
    }
}

mixin Music {

    void playMusic() {
        print("\n🎵 Music Started.");
    }
}

mixin FlashLight {

    void turnOnFlashLight() {
        print("\n🔦 Flashlight Turned ON.");
    }
}

class SmartPhone with Camera, Music, FlashLight {

    String ownerName = "";
    String modelName = "";

    void inputDetails() {

        stdout.write("Enter Owner Name : ");
        ownerName = stdin.readLineSync()!;

        stdout.write("Enter Phone Model : ");
        modelName = stdin.readLineSync()!;
    }

    void showDetails() {

        print("\n========== PHONE DETAILS ==========");
        print("Owner Name : $ownerName");
        print("Model Name : $modelName");
        print("===================================");
    }
}

void main() {

    SmartPhone phone = SmartPhone();

    phone.inputDetails();

    while (true) {

        print("\n========== SMART PHONE ==========");
        print("1. Show Phone Details");
        print("2. Open Camera");
        print("3. Play Music");
        print("4. Turn On Flashlight");
        print("5. Exit");

        stdout.write("Enter Choice : ");
        int choice = int.parse(stdin.readLineSync()!);

        switch (choice) {

            case 1:
                phone.showDetails();
                break;

            case 2:
                phone.takePhoto();
                break;

            case 3:
                phone.playMusic();
                break;

            case 4:
                phone.turnOnFlashLight();
                break;

            case 5:
                print("\n🙏 Thank You...");
                return;

            default:
                print("\n❌ Invalid Choice.");
        }

        print("\nPress Enter To Continue...");
        stdin.readLineSync();
    }
}