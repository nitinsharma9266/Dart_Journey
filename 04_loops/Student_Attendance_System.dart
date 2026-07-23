import 'dart:io';

void main(){
    stdout.write("Enter  Total Students : ");
    int totalStudent=int.parse(stdin.readLineSync()!);
    print("");
    
    int present=0;
    int absent=0;
    
    for(int i=1;i<=totalStudent;i++){

        print("===========STUDENT $i==============");
        stdout.write("Enter Student Name : ");
        String? name=stdin.readLineSync();
    
        stdout.write("Enter Attendance [P = Present, A = Absent]: ");
        String? attendance=stdin.readLineSync();
        print("");

        if(attendance=="p" || attendance=="P"){
            present++;

            print("Student Name : $name");
            print("Attendance : Present");
        }
        else if(attendance=="a" || attendance=="A"){
            absent++;
            print("Student Name : $name");
            print("Attendance : Absent");
        }
        else{
            print("Invalid Attendance! ");
        }  
        print("");
        
        print("====================================");
    }
    double attendancePercentage  = (present *100) / totalStudent;

    String attendanceStatus;

    if (attendancePercentage >= 90) {
        attendanceStatus = "Excellent";
    }
    else if (attendancePercentage >= 75) {
        attendanceStatus = "Good";
    }
    else if (attendancePercentage >= 50) {
        attendanceStatus = "Average";
    }
    else {
        attendanceStatus = "Poor";
    }

    print("========== DAILY ATTENDANCE REPORT ==========");
    print("");
    print("Total Students : $totalStudent");
    print("Present Students : $present");
    print("Absent Students : $absent");
    print("Attendance % : ${attendancePercentage.toStringAsFixed(2)}%");
    print("Attendance Status   : $attendanceStatus");
    print("");

    print("===========================================");

}