import 'dart:io';

void main() {
    stdout.write("Enter Traffic Signal (Red/Yellow/Green): ");
    String signal = stdin.readLineSync()!.toLowerCase();

    print("\n====== TRAFFIC STATUS ======");

    if (signal == "red") {
        print("Signal : RED");
        print("Action : STOP");
        print("Drive Safely");
    } else if (signal == "yellow") {
        print("Signal : YELLOW");
        print("Action : GET READY");
        print("Prepare to Move");
    } else if (signal == "green") {
        print("Signal : GREEN");
        print("Action : GO");
        print("Drive Carefully");
    } else {
        print("Invalid Traffic Signal");
    }

    print("============================");
}