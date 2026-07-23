import 'dart:io';

double calculateBill(
    double roomCharge,
    double medicineCharge,
    double doctorFee) {

    return roomCharge + medicineCharge + doctorFee;
}

void main() {
  
    stdout.write("Patient Name : ");
    String patient = stdin.readLineSync()!;

    stdout.write("Room Charge : ");
    double room = double.parse(stdin.readLineSync()!);

    stdout.write("Medicine Charge : ");
    double medicine = double.parse(stdin.readLineSync()!);

    stdout.write("Doctor Fee : ");
    double doctor = double.parse(stdin.readLineSync()!);

    double totalBill = calculateBill(room, medicine, doctor);

    print("\n========== HOSPITAL BILL ==========");
    print("Patient : $patient");
    print("Total Bill : ₹$totalBill");
}