import 'dart:io';

void main() {
    stdout.write("Enter Total Customers : ");
    int customers = int.parse(stdin.readLineSync()!);

    print("");

    int totalBill = 0;
    int highestBill = 0;
    int lowestBill = 0;

    for (int i = 1; i <= customers; i++) {
        int rate = 0;
        int billAmount = 0;

        print("=========== CUSTOMER $i ===========");

        stdout.write("Enter Customer Name : ");
        String name = stdin.readLineSync()!;

        stdout.write("Enter Customer ID : ");
        String customerId = stdin.readLineSync()!;

        stdout.write("Enter Units Consumed : ");
        int units = int.parse(stdin.readLineSync()!);
        if(units<0){
            print("Invalid Units !");
        }
        else if (units <= 100) {
            rate = 5;
            billAmount = units * rate;
        } else if (units <= 300) {
            rate = 7;
            billAmount = units * rate;
        } else{
            rate = 10;
            billAmount = units * rate;
        }
        

        // Total Bill
        totalBill += billAmount;

        // Highest & Lowest Bill
        if (i == 1) {
            highestBill = billAmount;
            lowestBill = billAmount;
        } else {
            if (billAmount > highestBill) {
                highestBill = billAmount;
            }

            if (billAmount < lowestBill) {
                lowestBill = billAmount;
            }
        }

        print("\n----------- BILL -----------");
        print("Customer Name : $name");
        print("Customer ID   : $customerId");
        print("Units         : $units");
        print("Rate          : ₹$rate per unit");
        print("Bill Amount   : ₹$billAmount");
        print("----------------------------\n");
    }

    double averageBill = totalBill / customers;

    print("========== FINAL REPORT ==========");
    print("Total Customers : $customers");
    print("Total Bill      : ₹$totalBill");
    print("Highest Bill    : ₹$highestBill");
    print("Lowest Bill     : ₹$lowestBill");
    print("Average Bill    : ₹${averageBill.toStringAsFixed(2)}");
}