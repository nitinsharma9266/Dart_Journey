import 'dart:io';

void main() {
    stdout.write("Enter Total Number of Books: ");
    int totalBooks = int.parse(stdin.readLineSync()!);

    print("");

    int totalFine = 0;
    int lateBooks = 0;

    for (int i = 1; i <= totalBooks; i++) {
        print("========== Book $i ==========");

        stdout.write("Enter Book Name: ");
        String bookName = stdin.readLineSync()!;

        stdout.write("Enter Book Price: ");
        int price = int.parse(stdin.readLineSync()!);

        stdout.write("Enter Student Name: ");
        String studentName = stdin.readLineSync()!;

        stdout.write("Enter Late Days: ");
        int lateDays = int.parse(stdin.readLineSync()!);

        int fine = 0;
        String status;

        if (lateDays > 0) {
            fine = lateDays * 10;
            status = "Late";
            lateBooks++;
        } else {
            status = "On Time";
        }

        totalFine += fine;

        print("\n------------ BOOK REPORT ------------");
        print("Book Name     : $bookName");
        print("Book Price    : ₹$price");
        print("Student Name  : $studentName");
        print("Late Days     : $lateDays");
        print("Fine          : ₹$fine");
        print("Status        : $status");

        if (fine >= 100) {
            print("Alert         : High Fine!");
        }

        print("-------------------------------------\n");
    }

    print("======================================");
    print("         LIBRARY FINAL REPORT");
    print("======================================");
    print("Total Books           : $totalBooks");
    print("Late Returned Books   : $lateBooks");
    print("Books On Time         : ${totalBooks - lateBooks}");
    print("Total Fine Collected  : ₹$totalFine");
    print("======================================");
}