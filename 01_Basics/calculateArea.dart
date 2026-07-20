import 'dart:io';
void main(){
    print("---------AREA OF CIRCLE-------------");
    print("");
    stdout.write("Enter Radius : ");
    double r=double.parse(stdin.readLineSync()!);
    print("");
    const double pi=3.14;
    double Area =pi*r*r;

    
    print("Area : ${Area}");

    print("-------------------------------------");
}