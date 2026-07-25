class Student {
    String? name;
    int? age;
    String? college;
}

void main() {
    Student s1 = Student();
    Student s2 = Student();

    s1.name = "Nitin";
    s1.age = 18;
    s1.college = "DIET";

    s2.name = "Rahul";
    s2.age = 24;
    s2.college = "AKTU";

    print("------ Student 1 ------");
    print("Name : ${s1.name}");
    print("Age : ${s1.age}");
    print("College : ${s1.college}");

    print("");

    print("------ Student 2 ------");
    print("Name : ${s2.name}");
    print("Age : ${s2.age}");
    print("College : ${s2.college}");
}