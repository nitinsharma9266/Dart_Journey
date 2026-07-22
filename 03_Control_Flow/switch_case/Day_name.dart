import 'dart:io';

void main() {
    print("======================================");
    print("        DAY INFORMATION SYSTEM");
    print("======================================");

    stdout.write("Enter Day Number (1-7): ");
    int day = int.parse(stdin.readLineSync()!);

    print();

    switch (day) {
        case 1:
            print("Day Name      : Monday");
            print("Type          : Working Day");
            print("Suggestion    : Start your week with full energy.");
            break;

        case 2:
            print("Day Name      : Tuesday");
            print("Type          : Working Day");
            print("Suggestion    : Stay focused on your goals.");
            break;

        case 3:
            print("Day Name      : Wednesday");
            print("Type          : Working Day");
            print("Suggestion    : Review your weekly progress.");
            break;

        case 4:
            print("Day Name      : Thursday");
            print("Type          : Working Day");
            print("Suggestion    : Complete your pending tasks.");
            break;

        case 5:
            print("Day Name      : Friday");
            print("Type          : Working Day");
            print("Suggestion    : Finish important work before weekend.");
            break;

        case 6:
            print("Day Name      : Saturday");
            print("Type          : Weekend");
            print("Suggestion    : Spend time with family and learn something new.");
            break;

        case 7:
            print("Day Name      : Sunday");
            print("Type          : Holiday");
            print("Suggestion    : Relax and prepare for the next week.");
            break;

        default:
            print("Invalid Day Number");
            print("Please enter a number between 1 and 7.");
    }

    print("\n======================================");
}