import 'dart:io';

void main() {
    stdout.write("Enter 12th Percentage: ");
    double percentage = double.parse(stdin.readLineSync()!);

    stdout.write("Documents Available? (yes/no): ");
    String documents = stdin.readLineSync()!.toLowerCase();

    stdout.write("Enter Age: ");
    int age=int.parse(stdin.readLineSync()!);

    if (percentage >= 60) {
        if(age>=17){
          if (documents == "yes") {
              print("\nAdmission Approved");
          }   else  {
              print("\nAdmission Rejected: Documents Missing");
          }
        }
        else{
          print("Your age must be 17.");
        }
      

      } else {
          print("\nAdmission Rejected: Percentage Less Than 60%");
      }
}