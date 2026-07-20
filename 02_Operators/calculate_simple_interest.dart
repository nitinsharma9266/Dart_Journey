import 'dart:io';
void main(){

    print("=========SIMPLE INTEREST CALCULATOR=========");
    print("");
    stdout.write("Principal : ");
    double Principal=double.parse(stdin.readLineSync()!);
    print("");

    stdout.write("Rate : ");
    double Rate=double.parse(stdin.readLineSync()!);
    print("");

    stdout.write("Time : ");
    int Time=int.parse(stdin.readLineSync()!);
    print("");

    double SI=(Principal*Rate*Time)/100;

    print("Simple Interest : ${SI}");

    print("================================");
}