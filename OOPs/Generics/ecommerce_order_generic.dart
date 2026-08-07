import 'dart:io';

// ========================================
// INTERFACE
// ========================================

abstract class Discountable {
    double calculateDiscount();
}

// ========================================
// MIXIN
// ========================================

mixin OrderNotification {

    void sendNotification(String message) {
        print("\n🔔 Notification: $message");
    }
}

// ========================================
// ABSTRACT CLASS
// ========================================

abstract class Product
    implements Discountable {

    String _productName = "";
    double _price = 0;
    int _quantity = 0;

    // GETTERS

    String get productName => _productName;

    double get price => _price;

    int get quantity => _quantity;

    // SETTERS

    set productName(String value) {

        if (value.trim().isNotEmpty) {
            _productName = value.trim();
        } else {
            print("❌ Product name cannot be empty.");
        }
    }

    set price(double value) {

        if (value > 0) {
            _price = value;
        } else {
            print("❌ Price must be greater than 0.");
        }
    }

    set quantity(int value) {

        if (value > 0) {
            _quantity = value;
        } else {
            print("❌ Quantity must be greater than 0.");
        }
    }

    void inputDetails() {

        stdout.write("Enter Product Name : ");
        productName = stdin.readLineSync()!;

        stdout.write("Enter Product Price : ");
        price = double.parse(stdin.readLineSync()!);

        stdout.write("Enter Quantity : ");
        quantity = int.parse(stdin.readLineSync()!);
    }

    double calculateTotal() {

        return price * quantity;
    }

    void showProductDetails() {

        print("\n========== PRODUCT DETAILS ==========");
        print("Product Name : $productName");
        print("Price        : ₹$price");
        print("Quantity     : $quantity");
        print("=====================================");
    }

    void productCategory();
}

// ========================================
// ELECTRONICS
// ========================================

class Electronics extends Product {

    @override
    double calculateDiscount() {

        return calculateTotal() * 0.10;
    }

    @override
    void productCategory() {

        print("Category     : Electronics");
    }
}

// ========================================
// CLOTHES
// ========================================

class Clothes extends Product {

    @override
    double calculateDiscount() {

        return calculateTotal() * 0.20;
    }

    @override
    void productCategory() {

        print("Category     : Clothes");
    }
}

// ========================================
// BOOKS
// ========================================

class Books extends Product {

    @override
    double calculateDiscount() {

        return calculateTotal() * 0.05;
    }

    @override
    void productCategory() {

        print("Category     : Books");
    }
}

// ========================================
// GENERIC ORDER CLASS
// ========================================

class Order<T extends Product>
    with OrderNotification {

    String customerName;
    T product;

    Order(
        this.customerName,
        this.product
    );

    void showOrder() {

        double total = product.calculateTotal();

        double discount =
            product.calculateDiscount();

        double finalAmount =
            total - discount;

        print("\n========== ORDER DETAILS ==========");

        print("Customer Name : $customerName");

        print("Product Name  : ${product.productName}");

        product.productCategory();

        print("Price         : ₹${product.price}");

        print("Quantity      : ${product.quantity}");

        print("Total         : ₹$total");

        print("Discount      : ₹$discount");

        print("Final Amount  : ₹$finalAmount");

        print("===================================");

        sendNotification(
            "Order placed successfully."
        );
    }
}

// ========================================
// MAIN
// ========================================

void main() {

    while (true) {

        print("\n========== E-COMMERCE ==========");

        print("1. Electronics");

        print("2. Clothes");

        print("3. Books");

        print("4. Exit");

        stdout.write("Enter Choice : ");

        int choice =
            int.parse(stdin.readLineSync()!);

        if (choice == 4) {

            print(
                "\n🙏 Thank You for Shopping!"
            );

            return;
        }

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

            default:

                print("❌ Invalid Choice.");

                continue;
        }

        stdout.write(
            "\nEnter Customer Name : "
        );

        String customerName =
            stdin.readLineSync()!;

        product.inputDetails();

        // POLYMORPHISM

        if (product is Electronics) {

            Order<Electronics> order =
                Order(
                    customerName,
                    product
                );

            order.showOrder();

        } else if (product is Clothes) {

            Order<Clothes> order =
                Order(
                    customerName,
                    product
                );

            order.showOrder();

        } else if (product is Books) {

            Order<Books> order =
                Order(
                    customerName,
                    product
                );

            order.showOrder();
        }

        print(
            "\nPress Enter to Continue..."
        );

        stdin.readLineSync();
    }
}