class Student{
    String? name;
    int? age;
    String? college;

}
void main(){
    Student s1=Student();
    s1.name="Nitin";
    s1.age=18;
    s1.college="DIET";

    print("Name : ${s1.name}");
    print("Age : ${s1.age}");
    print("College : ${s1.college}");
}