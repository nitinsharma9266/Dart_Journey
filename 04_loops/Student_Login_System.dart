import 'dart:io';

void main() {
  const String correctUsername = "nitin";
  const String correctPassword = "12345";

  const String studentName = "Nitin Sharma";
  const String rollNumber = "230101001";
  const String branch = "CSE";

  int attempts = 0;
  const int maxAttempts = 3;

  while (attempts < maxAttempts) {
    stdout.write("Enter Username : ");
    String username = stdin.readLineSync()!;

    stdout.write("Enter Password : ");
    String password = stdin.readLineSync()!;

    if (username == correctUsername && password == correctPassword) {
      print("\n✅ Login Successful");
      print("Welcome $studentName\n");

      bool isLoggedIn = true;

      while (isLoggedIn) {
        print("\n========== STUDENT PORTAL ==========");
        print("1. View Profile");
        print("2. Attendance");
        print("3. Marks");
        print("4. Fees");
        print("5. Logout");

        stdout.write("\nEnter Your Choice : ");
        int choice = int.parse(stdin.readLineSync()!);

        switch (choice) {
          case 1:
            print("\n------ PROFILE ------");
            print("Name        : $studentName");
            print("Roll Number : $rollNumber");
            print("Branch      : $branch");
            break;

          case 2:
            print("\nAttendance : 92%");
            break;

          case 3:
            print("\nMarks : 435 / 500");
            break;

          case 4:
            print("\nFee Status : Paid");
            break;

          case 5:
            print("\nThank You!");
            print("Logged Out Successfully.");
            isLoggedIn = false;
            break;

          default:
            print("\nInvalid Choice!");
        }
      }

      break;
    } else {
      attempts++;

      print("\n❌ Invalid Username or Password");

      if (attempts < maxAttempts) {
        print("Remaining Attempts : ${maxAttempts - attempts}");
      } else {
        print("\n🚫 Account Locked");
      }
    }
  }
}