void main() {
    List<int> marks = [
        45,
        60,
        80,
        90,
    ];

    bool hasFailedStudent = marks.any((mark) {
        return mark < 50;
    });

    print(hasFailedStudent);
}