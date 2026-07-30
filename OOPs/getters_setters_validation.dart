import 'dart:io';

class User {
  String _email = "";

  // Getter
  String get email {
    return _email;
  }

  // Setter with Validation
  set email(String value) {
    if (value.contains("@") &&
        value.contains(".") &&
        !value.contains(" ") &&
        value.length >= 10) {
      _email = value;
      print("\n✅ Email Saved Successfully.");
    } else {
      print("\n❌ Invalid Email! Please Try Again.");
    }
  }
}

void main() {
  User user = User();

  while (user.email.isEmpty) {
    stdout.write("Enter Your Email: ");
    String inputEmail = stdin.readLineSync()!;

    // Setter Call
    user.email = inputEmail;
  }

  print("\n========== USER DETAILS ==========");
  print("Email : ${user.email}");
  print("==================================");
}