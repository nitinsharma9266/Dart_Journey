import 'dart:io';

class User {
  late String userName;
  late String userId;
  late String userRole;
  late bool isActive;

  // Admin Constructor
  User.admin(String name, String id) {
    userName = name;
    userId = id;
    userRole = "Admin";
    isActive = true;
  }

  // Student Constructor
  User.student(String name, String id) {
    userName = name;
    userId = id;
    userRole = "Student";
    isActive = true;
  }

  // Teacher Constructor
  User.teacher(String name, String id) {
    userName = name;
    userId = id;
    userRole = "Teacher";
    isActive = true;
  }

  // Guest Constructor
  User.guest(String name, String id) {
    userName = name;
    userId = id;
    userRole = "Guest";
    isActive = false;
  }

  void showUserDetails() {
    print("\n========== USER DETAILS ==========");
    print("User Name : $userName");
    print("User ID   : $userId");
    print("User Role : $userRole");
    print("Active    : $isActive");
    print("==================================");
  }
}

void main() {
  int choice;

  do {
    print("\n========== USER MANAGEMENT ==========");
    print("1. Admin");
    print("2. Student");
    print("3. Teacher");
    print("4. Guest");
    print("5. Exit");

    stdout.write("Enter Your Choice: ");
    choice = int.parse(stdin.readLineSync()!);

    if (choice == 5) {
      print("\nProgram Closed Successfully.");
      break;
    }

    stdout.write("Enter User Name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter User ID: ");
    String id = stdin.readLineSync()!;

    User user;

    switch (choice) {
      case 1:
        user = User.admin(name, id);
        break;

      case 2:
        user = User.student(name, id);
        break;

      case 3:
        user = User.teacher(name, id);
        break;

      case 4:
        user = User.guest(name, id);
        break;

      default:
        print("\nInvalid Choice! Please Try Again.");
        continue;
    }

    user.showUserDetails();

  } while (true);
}