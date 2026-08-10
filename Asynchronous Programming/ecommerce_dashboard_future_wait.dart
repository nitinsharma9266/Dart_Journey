import 'dart:io';

class UserService {

    Future<String> getUserProfile(String name) {

        return Future.delayed(
            Duration(seconds: 2),
            () {
                return "Welcome $name";
            },
        );
    }
}

class ProductService {

    Future<String> getProducts(String city) {

        return Future.delayed(
            Duration(seconds: 3),
            () {
                return "Products available in $city";
            },
        );
    }
}

class NotificationService {

    Future<String> getNotifications() {

        return Future.delayed(
            Duration(seconds: 1),
            () {
                return "You have 3 new notifications";
            },
        );
    }
}

Future<void> main() async {

    print("========== E-COMMERCE DASHBOARD ==========\n");

    stdout.write("Enter Your Name : ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter Your City : ");
    String city = stdin.readLineSync()!;

    UserService userService = UserService();
    ProductService productService = ProductService();
    NotificationService notificationService =
        NotificationService();

    print("\n⏳ Loading Dashboard...\n");

    List<String> results = await Future.wait([

        userService.getUserProfile(name),

        productService.getProducts(city),

        notificationService.getNotifications(),

    ]);

    print("========== DASHBOARD ==========");

    print(results[0]);

    print(results[1]);

    print(results[2]);

    print("===============================");
}