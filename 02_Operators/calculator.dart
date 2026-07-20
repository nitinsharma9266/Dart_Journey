import 'dart:io';
void main(){
    stdout.write("Enter First number : ");
    int a=int.parse(stdin.readLineSync()!);
    print("");

    stdout.write("Enter Second Number : ");
    int b=int.parse(stdin.readLineSync()!);
    print("");
    print("==============CALCULATOR===============");
    print("ADDITION OF TWO NUMBERS : ${a+b}");
    print("");
    print("SUBTRACTION OF TWO NUMBERS : ${a-b}");
    print("");
    print("MULTIPLICATION OF TWO NUMBERS : ${a*b} ");
    print("");
    print("DIVISION OF TWO NUMBERS : ${a/b}");
    print("");
    print("INTEGER DIVISION OF TWO NUMBERS : ${a~/b}");
    print("");
    print("REMAINDER OF TWO NUMBERS : ${a%b}");
    print("===================================");

}