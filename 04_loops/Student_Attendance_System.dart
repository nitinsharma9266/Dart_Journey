import 'dart:io';

void main(){
    stdout.write("Enter  Total Students : ");
    int totalStudent=int.parse(stdin.readLineSync()!);
    print("");

    for(int i=1;i<=totalStudent;i++){
        stdout.write("Enter Student Name : ");
        String? name=stdin.readLineSync();
        print("");

        
    }
}