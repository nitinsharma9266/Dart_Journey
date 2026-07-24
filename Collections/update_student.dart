void main(){
    List<String> students=[
        "Rahul",
        "Aman",
        "Nitin",
        "Arjun",
        ];
    students[0]="Rohit";
    print("Updated List : $students");
    print("Length of List : ${students.length}");
    print("First Student Name : ${students.first}");
    print("Last Student Name : ${students.last}");
    print("Check List Is empty : ${students.isEmpty}");
    print("Check list is not empty : ${students.isNotEmpty}");
}