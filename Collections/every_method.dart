void main() {
    List<int> marks = [
        60,
        70,
        80,
        90,
    ];

    bool allPassed = marks.every((mark) {
        return mark >= 50;
    });

    print(allPassed);
}