import 'dart:io';

abstract class FoodOrder {
    String customerName = "";
    int quantity = 0;
    double totalAmount = 0;

    void inputDetails() {
        stdout.write("Enter Customer Name : ");
        customerName = stdin.readLineSync()!;

        stdout.write("Enter Quantity : ");
        quantity = int.parse(stdin.readLineSync()!);
    }

    void calculateBill();

    void showBill() {
        print("\n========== BILL ==========");
        print("Customer Name : $customerName");
        print("Quantity      : $quantity");
        print("Total Amount  : ₹$totalAmount");
        print("==========================");
    }
}

class PizzaOrder extends FoodOrder {

    @override
    void calculateBill() {
        totalAmount = quantity * 250;
    }
}

class BurgerOrder extends FoodOrder {

    @override
    void calculateBill() {
        totalAmount = quantity * 150;
    }
}

class CoffeeOrder extends FoodOrder {

    @override
    void calculateBill() {
        totalAmount = quantity * 120;
    }
}

void main() {

    while (true) {

        print("\n========== FOOD ORDER ==========");
        print("1. Pizza");
        print("2. Burger");
        print("3. Coffee");
        print("4. Exit");

        stdout.write("Enter Choice : ");
        int choice = int.parse(stdin.readLineSync()!);

        FoodOrder order;

        switch (choice) {

            case 1:
                order = PizzaOrder();
                break;

            case 2:
                order = BurgerOrder();
                break;

            case 3:
                order = CoffeeOrder();
                break;

            case 4:
                print("Thank You!");
                return;

            default:
                print("Invalid Choice");
                continue;
        }

        order.inputDetails();
        order.calculateBill();
        order.showBill();

        print("\nPress Enter to Continue...");
        stdin.readLineSync();
    }
}