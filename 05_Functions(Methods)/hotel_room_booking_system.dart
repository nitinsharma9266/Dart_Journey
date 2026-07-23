import 'dart:io';

double calculateRoomCharge(
    double roomPrice,
    int totalDays,
) {
    return roomPrice * totalDays;
}

double calculateGST(double roomCharge) {
    return roomCharge * 0.18;
}

double calculateFinalAmount(
    double roomCharge,
    double gst,
) {
    return roomCharge + gst;
}

void printInvoice(
    String customerName,
    String roomType,
    int totalDays,
    double roomCharge,
    double gst,
    double finalAmount,
) {
    print("\n========== HOTEL INVOICE ==========");
    print("Customer Name : $customerName");
    print("Room Type     : $roomType");
    print("Total Days    : $totalDays");
    print("Room Charge   : ₹${roomCharge.toStringAsFixed(2)}");
    print("GST (18%)     : ₹${gst.toStringAsFixed(2)}");
    print("-----------------------------------");
    print("Final Amount  : ₹${finalAmount.toStringAsFixed(2)}");
}

void main() {
    stdout.write("Enter Customer Name : ");
    String customerName = stdin.readLineSync()!;

    stdout.write("Enter Room Type : ");
    String roomType = stdin.readLineSync()!;

    stdout.write("Enter Room Price Per Day : ");
    double roomPrice = double.parse(stdin.readLineSync()!);

    stdout.write("Enter Total Days : ");
    int totalDays = int.parse(stdin.readLineSync()!);

    double roomCharge = calculateRoomCharge(
        roomPrice,
        totalDays,
    );

    double gst = calculateGST(roomCharge);

    double finalAmount = calculateFinalAmount(
        roomCharge,
        gst,
    );

    printInvoice(
        customerName,
        roomType,
        totalDays,
        roomCharge,
        gst,
        finalAmount,
    );
}