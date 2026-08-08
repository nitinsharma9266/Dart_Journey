import 'dart:io';

void rentCar(
    String customer,
    int age,
    int days,
    double pricePerDay
) {

    if (customer.trim().isEmpty) {
        throw Exception("Customer name cannot be empty.");
    }

    if (age < 18) {
        throw Exception("Customer must be at least 18 years old.");
    }

    if (days <= 0) {
        throw Exception("Rental days must be greater than 0.");
    }

    if (pricePerDay <= 0) {
        throw Exception("Invalid car rental price.");
    }

    double total =
        days * pricePerDay;

    print("\n========== CAR RENTAL ==========");
    print("Customer     : $customer");
    print("Age          : $age");
    print("Rental Days  : $days");
    print("Price / Day  : ₹$pricePerDay");
    print("Total Cost   : ₹$total");
    print("Status       : Booking Confirmed");
    print("================================");
}

void main() {

    try {

        stdout.write("Customer Name : ");
        String customer =stdin.readLineSync()!;

        stdout.write("Customer Age : ");
        int age =int.parse(stdin.readLineSync()!);

        stdout.write("Rental Days : ");
        int days =int.parse(stdin.readLineSync()!);

        stdout.write("Price Per Day : ");
        double price =double.parse(stdin.readLineSync()!);

        rentCar(
            customer,
            age,
            days,
            price
        );

    } catch (e) {

        print("\n❌ Rental Failed.");
        print("Reason: $e");

    } finally {

        print("\nRental process completed.");
    }
}