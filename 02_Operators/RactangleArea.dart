import 'dart:io';
void main(){
    print("=========AREA OF RECTANGLE=========");

    stdout.write("Length : ");
    double length=double.parse(stdin.readLineSync()!);
    print("");

    stdout.write("Breadth : ");
    double breadth=double.parse(stdin.readLineSync()!);
    print("");

    double area=length*breadth;

    print("Area : ${area}");

    print("==================================");

}