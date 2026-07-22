import 'dart:io';

void main() {
    print("======================================");
    print("        MONTH INFORMATION SYSTEM");
    print("======================================");

    stdout.write("Enter Month Number (1-12): ");
    int month = int.parse(stdin.readLineSync()!);

    print();

    switch (month) {
        case 1:
            print("Month : January");
            print("Season: Winter");
            break;

        case 2:
            print("Month : February");
            print("Season: Winter");
            break;

        case 3:
            print("Month : March");
            print("Season: Spring");
            break;

        case 4:
            print("Month : April");
            print("Season: Summer");
            break;

        case 5:
            print("Month : May");
            print("Season: Summer");
            break;

        case 6:
            print("Month : June");
            print("Season: Monsoon");
            break;

        case 7:
            print("Month : July");
            print("Season: Monsoon");
            break;

        case 8:
            print("Month : August");
            print("Season: Monsoon");
            break;

        case 9:
            print("Month : September");
            print("Season: Autumn");
            break;

        case 10:
            print("Month : October");
            print("Season: Autumn");
            break;

        case 11:
            print("Month : November");
            print("Season: Winter");
            break;

        case 12:
            print("Month : December");
            print("Season: Winter");
            break;

        default:
            print("Invalid Month Number");
            print("Please enter a number between 1 and 12.");
            return;
    }

    int days;

    switch (month) {
        case 2:
            days = 28;
            break;

        case 4:
        case 6:
        case 9:
        case 11:
            days = 30;
            break;

        default:
            days = 31;
    }

    print("Total Days : $days");
    print("Status     : Month information loaded successfully.");

    print("\n======================================");
}