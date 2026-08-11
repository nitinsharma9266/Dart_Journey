import 'dart:io';

Future<String> login(
    String username,
    String password,
) async {

    await Future.delayed(
        Duration(seconds: 2),
    );

    if (username.isEmpty ||
        password.isEmpty) {

        throw Exception(
            "Username and password are required.",
        );
    }

    if (username != "admin" ||
        password != "1234") {

        throw Exception(
            "Invalid username or password.",
        );
    }

    return "Login Successful";
}

Future<void> main() async {

    try {

        stdout.write("Enter Username : ");
        String username =
            stdin.readLineSync()!;

        stdout.write("Enter Password : ");
        String password =
            stdin.readLineSync()!;

        print("\n⏳ Logging in...");

        String result = await login(
            username,
            password,
        );

        print("\n✅ $result");

    } catch (e) {

        print("\n❌ Login Failed.");
        print("Reason: $e");
    }
}