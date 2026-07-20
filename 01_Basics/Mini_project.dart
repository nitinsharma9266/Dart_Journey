import 'dart:io';
void main(){
    stdout.write("Enter Name : ");
    String? name=stdin.readLineSync();
    print(" ");

    stdout.write("Enter Age : ");
    int age=int.parse(stdin.readLineSync()!);
    print(" ");

    stdout.write("Enter College Name : ");
    String? College=stdin.readLineSync();
    print(" ");

    stdout.write("Enter your branch : ");
    String? branch=stdin.readLineSync();
    print(" ");

    stdout.write("Enter City : ");
    String? city=stdin.readLineSync();
    print(" ");
    
    bool isStudent=true;

    print("-----------PROFILE----------");
    print("Name : $name");
    print("Age : $age");
    print("College : $College");
    print("Branch : $branch");
    print("City : $city");
    print("Student : $isStudent");

}