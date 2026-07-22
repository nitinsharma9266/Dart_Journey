import 'dart:io';

void main() {
    stdout.write("Choose Language (1-3): ");
    int language = int.parse(stdin.readLineSync()!);

    switch (language) {
        case 1:
            print("English Selected");
            break;

        case 2:
            print("Hindi Selected");
            break;

        case 3:
            print("Japanese Selected");
            break;

        default:
            print("Invalid Choice");
    }
}