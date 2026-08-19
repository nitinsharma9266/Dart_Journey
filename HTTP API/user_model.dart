class User {
    int id;
    String name;
    String username;
    String email;

    User(
        this.id,
        this.name,
        this.username,
        this.email,
    );

    factory User.fromJson(
        Map<String, dynamic> json,
    ) {
        return User(
            json["id"] ?? 0,
            json["name"] ?? "Unknown",
            json["username"] ?? "Unknown",
            json["email"] ?? "No email",
        );
    }
}