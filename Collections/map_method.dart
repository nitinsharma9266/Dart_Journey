// void main() {
//     List<String> students = [
//         "Rahul",
//         "Aman",
//         "Nitin",
//     ];

//     List<String> upperCaseStudents = students.map((student) {
//         return student.toUpperCase();
//     }).toList();

//     print(upperCaseStudents);
// }

void main() {
    List<int> salaries = [
        25000,
        30000,
        45000,
    ];

    List<String> report = salaries.map((salary) {
        return "₹$salary";
    }).toList();

    print(report);
}