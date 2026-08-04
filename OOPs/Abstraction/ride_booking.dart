import 'dart:io';

abstract class Ride {

    String passengerName = "";
    double distance = 0;
    double totalFare = 0;

    void inputDetails() {

        stdout.write("Enter Passenger Name : ");
        passengerName = stdin.readLineSync()!;

        stdout.write("Enter Distance (KM) : ");
        distance = double.parse(stdin.readLineSync()!);
    }

    void calculateFare();

    void showRideDetails() {

        print("\n========== RIDE DETAILS ==========");
        print("Passenger Name : $passengerName");
        print("Distance       : $distance KM");
        print("Total Fare     : ₹$totalFare");
        print("==================================");
    }
}

class BikeRide extends Ride {

    @override
    void calculateFare() {

        totalFare = distance * 10;
    }
}

class AutoRide extends Ride {

    @override
    void calculateFare() {

        totalFare = distance * 15;
    }
}

class CabRide extends Ride {

    @override
    void calculateFare() {

        totalFare = distance * 25;
    }
}

void main() {

    while (true) {

        print("\n========== RIDE BOOKING ==========");
        print("1. Bike Ride");
        print("2. Auto Ride");
        print("3. Cab Ride");
        print("4. Exit");

        stdout.write("Enter Choice : ");
        int choice = int.parse(stdin.readLineSync()!);

        Ride ride;

        switch (choice) {

            case 1:
                ride = BikeRide();
                break;

            case 2:
                ride = AutoRide();
                break;

            case 3:
                ride = CabRide();
                break;

            case 4:
                print("\nThank You for Using Ride Booking App.");
                return;

            default:
                print("❌ Invalid Choice.");
                continue;
        }

        ride.inputDetails();
        ride.calculateFare();
        ride.showRideDetails();

        print("\nPress Enter to Continue...");
        stdin.readLineSync();
    }
}