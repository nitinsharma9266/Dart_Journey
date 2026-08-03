import 'dart:io';

abstract class Employee {
    String name = "";
    double salary = 0;

    void inputDetails() {
        stdout.write("Enter Employee Name : ");
        name = stdin.readLineSync()!;
    }

    void calculateSalary();

    void showDetails() {
        print("\n========== EMPLOYEE DETAILS ==========");
        print("Employee Name : $name");
        print("Final Salary  : ₹$salary");
        print("======================================");
    }
}

class Developer extends Employee {

    @override
    void calculateSalary() {
        stdout.write("Enter Basic Salary : ");
        double basic = double.parse(stdin.readLineSync()!);

        salary = basic + 10000;
    }
}

class Designer extends Employee {

    @override
    void calculateSalary() {
        stdout.write("Enter Basic Salary : ");
        double basic = double.parse(stdin.readLineSync()!);

        salary = basic + 5000;
    }
}

class Manager extends Employee {

    @override
    void calculateSalary() {
        stdout.write("Enter Basic Salary : ");
        double basic = double.parse(stdin.readLineSync()!);

        salary = basic + 20000;
    }
}

void main() {

    while (true) {

        print("\n========== EMPLOYEE MANAGEMENT SYSTEM ==========");
        print("1. Developer");
        print("2. Designer");
        print("3. Manager");
        print("4. Exit");

        stdout.write("Enter Choice : ");
        int choice = int.parse(stdin.readLineSync()!);

        Employee employee;

        switch (choice) {

            case 1:
                employee = Developer();
                break;

            case 2:
                employee = Designer();
                break;

            case 3:
                employee = Manager();
                break;

            case 4:
                print("\n🙏 Thank You for Using Employee Management System.");
                return;

            default:
                print("❌ Invalid Choice.");
                continue;
        }

        employee.inputDetails();
        employee.calculateSalary();
        employee.showDetails();

        print("\nPress Enter to Continue...");
        stdin.readLineSync();
    }
}