class User {
  String _userName = "";

  // Getter
  String get userName {
    return _userName;
  }

  // Setter
  set userName(String value) {
    _userName = value;
  }
}

void main() {
  User user = User();

  user.userName = "Nitin Sharma"; // Setter call

  print(user.userName); // Getter call
}