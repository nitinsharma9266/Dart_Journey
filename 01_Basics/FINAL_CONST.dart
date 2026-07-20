import 'dart:io';
void main(){
    stdout.write("Enter Name : ");
    final String? name=stdin.readLineSync();
    print("");

    stdout.write("Enter Your Age : ");
    final int age=int.parse(stdin.readLineSync()!);
    print("");

    stdout.write("Enter Your Salary : ");
    final double salary=double.parse(stdin.readLineSync()!);
    print("");

    print("----------PROFILE----------");
    print("Name : $name");
    print("Age : $age");
    print("Salary : $salary");
}