import 'dart:io';

void updateCourier(
    String trackingId,
    String status
) {

    if (trackingId.trim().isEmpty) {
        throw Exception("Tracking ID cannot be empty.");
    }

    List<String> validStatuses = [
        "Booked",
        "Shipped",
        "Out for Delivery",
        "Delivered"
    ];

    if (!validStatuses.contains(status)) {
        throw Exception("Invalid courier status.");
    }

    print("\n========== COURIER ==========");
    print("Tracking ID : $trackingId");
    print("Status      : $status");
    print("=============================");
}

void main() {

    try {

        stdout.write("Enter Tracking ID : ");
        String trackingId =stdin.readLineSync()!;

        stdout.write("Enter Status (Booked/Shipped/Out for Delivery/Delivered) : ");

        String status =stdin.readLineSync()!;

        updateCourier(
            trackingId,
            status
        );

    } catch (e) {

        print("\n❌ Update Failed.");
        print("Reason: $e");

    } finally {

        print("\nCourier process completed.");
    }
}