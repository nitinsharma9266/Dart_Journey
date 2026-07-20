import 'dart:io';
void main(){
    stdout.write("Enter Your Name : ");
    String? name=stdin.readLineSync();

    print("Name : $name");
}