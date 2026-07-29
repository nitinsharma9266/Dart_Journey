class User {
  late String userName;
  late String userId;
  late String role;

  User.admin(
    String name,
    String id,
  )   : userName = name,
        userId = id,
        role = "Admin";

  void showUserDetails() {
    print("========== USER DETAILS ==========");
    print("User Name : $userName");
    print("User ID   : $userId");
    print("Role      : $role");
    print("==================================");
  }
}

void main() {
  User u1 = User.admin(
    "Nitin Sharma",
    "ADM001",
  );

  u1.showUserDetails();
}