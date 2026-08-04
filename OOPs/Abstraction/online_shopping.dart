import 'dart:io';

abstract class Product {

    String customerName = "";
    String productName = "";
    double price = 0;
    double finalPrice = 0;

    void inputDetails() {

        stdout.write("Enter Customer Name : ");
        customerName = stdin.readLineSync()!;

        stdout.write("Enter Product Name : ");
        productName = stdin.readLineSync()!;

        stdout.write("Enter Product Price : ");
        price = double.parse(stdin.readLineSync()!);
    }

    void calculateDiscount();

    void showBill() {

        print("\n========== SHOPPING BILL ==========");
        print("Customer Name : $customerName");
        print("Product Name  : $productName");
        print("Original Price: ₹$price");
        print("Final Price   : ₹$finalPrice");
        print("===================================");
    }
}

class Electronics extends Product {

    @override
    void calculateDiscount() {

        finalPrice = price - (price * 10 / 100);
    }
}

class Clothes extends Product {

    @override
    void calculateDiscount() {

        finalPrice = price - (price * 20 / 100);
    }
}

class Books extends Product {

    @override
    void calculateDiscount() {

        finalPrice = price - (price * 5 / 100);
    }
}

void main() {

    while (true) {

        print("\n========== ONLINE SHOPPING ==========");
        print("1. Electronics");
        print("2. Clothes");
        print("3. Books");
        print("4. Exit");

        stdout.write("Enter Choice : ");
        int choice = int.parse(stdin.readLineSync()!);

        Product product;

        switch (choice) {

            case 1:
                product = Electronics();
                break;

            case 2:
                product = Clothes();
                break;

            case 3:
                product = Books();
                break;

            case 4:
                print("\nThank You for Shopping!");
                return;

            default:
                print("Invalid Choice.");
                continue;
        }

        product.inputDetails();
        product.calculateDiscount();
        product.showBill();

        print("\nPress Enter to Continue...");
        stdin.readLineSync();
    }
}