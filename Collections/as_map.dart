void main() {
    List<String> students = [
        "Rahul",
        "Aman",
        "Nitin",
        "Arjun",
        "Rohit",
    ];

    print("Student Records");

    students.asMap().forEach((index, student) {
        print("${index + 1}. $student");
    });
}