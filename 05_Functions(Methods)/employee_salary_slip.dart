import 'dart:io';

void salarySlip(
    String name,
    String department,
    double basicSalary,
) {
    double hra = basicSalary * 0.20;
    double da = basicSalary * 0.10;
    double grossSalary = basicSalary + hra + da;

    print("\n========== SALARY SLIP ==========");
    print("Employee Name : $name");
    print("Department    : $department");
    print("Basic Salary  : ₹$basicSalary");
    print("HRA           : ₹$hra");
    print("DA            : ₹$da");
    print("Gross Salary  : ₹$grossSalary");
}

void main() {
    stdout.write("Enter Employee Name : ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter Department : ");
    String department = stdin.readLineSync()!;

    stdout.write("Enter Basic Salary : ");
    double salary = double.parse(stdin.readLineSync()!);

    salarySlip(name, department, salary);
}