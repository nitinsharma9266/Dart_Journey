import 'dart:io';

class User {
  String _email = "";
  String _password = "";

  // Email Getter
  String get email => _email;

  // Password Getter
  String get password => _password;

  // Email Setter
  set email(String value) {
    if (value.contains("@") &&
        value.contains(".") &&
        !value.contains(" ") &&
        value.length >= 10) {
      _email = value;
      print("✅ Email Saved Successfully.\n");
    } else {
      print("❌ Invalid Email! Try Again.\n");
    }
  }

  // Password Setter
  set password(String value) {
    bool hasUpperCase = false;
    bool hasLowerCase = false;
    bool hasDigit = false;

    for (int i = 0; i < value.length; i++) {
      String ch = value[i];

      if (ch.compareTo('A') >= 0 && ch.compareTo('Z') <= 0) {
        hasUpperCase = true;
      }

      if (ch.compareTo('a') >= 0 && ch.compareTo('z') <= 0) {
        hasLowerCase = true;
      }

      if (ch.compareTo('0') >= 0 && ch.compareTo('9') <= 0) {
        hasDigit = true;
      }
    }

    if (value.length >= 8 &&
        hasUpperCase &&
        hasLowerCase &&
        hasDigit) {
      _password = value;
      print("✅ Password Saved Successfully.\n");
    } else {
      print("❌ Invalid Password!");
      print("Password must contain:");
      print("- Minimum 8 characters");
      print("- At least 1 Uppercase Letter");
      print("- At least 1 Lowercase Letter");
      print("- At least 1 Number\n");
    }
  }
}

void main() {
  User user = User();

  // Email Validation Loop
  while (user.email.isEmpty) {
    stdout.write("Enter Email: ");
    String inputEmail = stdin.readLineSync()!;
    user.email = inputEmail;
  }

  // Password Validation Loop
  while (user.password.isEmpty) {
    stdout.write("Enter Password: ");
    String inputPassword = stdin.readLineSync()!;
    user.password = inputPassword;
  }

  print("\n========== LOGIN DETAILS ==========");
  print("Email    : ${user.email}");
  print("Password : ${user.password}");
  print("==================================");
}