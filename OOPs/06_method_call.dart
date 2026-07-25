class Student{
    String? name ;
    int? age;
    String? college;
    String? branch;

    void study(){
        print("${name} is studying in ${college}");
    }
}
void main(){
    Student s1=Student();
    s1.name="Rahul";
    s1.age=24;
    s1.college="RR inter college";
    s1.branch="CSE";
    s1.study();
}