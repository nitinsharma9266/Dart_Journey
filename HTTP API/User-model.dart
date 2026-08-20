class Address {
    String street;
    String city;
    String zipcode;

    Address(
        this.street,
        this.city,
        this.zipcode,
    );

    factory Address.fromJson(
        Map<String, dynamic> json,
    ) {
        return Address(
            json["street"] ?? "Unknown",
            json["city"] ?? "Unknown",
            json["zipcode"] ?? "Unknown",
        );
    }
}

class Company {
    String name;

    Company(this.name);

    factory Company.fromJson(
        Map<String, dynamic> json,
    ) {
        return Company(
            json["name"] ?? "Unknown Company",
        );
    }
}

class User {
    int id;
    String name;
    String username;
    String email;
    Address address;
    Company company;

    User(
        this.id,
        this.name,
        this.username,
        this.email,
        this.address,
        this.company,
    );

    factory User.fromJson(
        Map<String, dynamic> json,
    ) {
        return User(
            json["id"] ?? 0,
            json["name"] ?? "Unknown",
            json["username"] ?? "Unknown",
            json["email"] ?? "No Email",
            Address.fromJson(
                json["address"] ?? {},
            ),
            Company.fromJson(
                json["company"] ?? {},
            ),
        );
    }
}