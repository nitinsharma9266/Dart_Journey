void main() {
    print("========== EXPLICIT TYPE CONVERSION ==========\n");

    // String → int

    String age = "18";
    int ageInt = int.parse(age);

    // String → double

    String salary = "45000.75";
    double salaryDouble = double.parse(salary);

    // int → String

    int marks = 95;
    String marksString = marks.toString();

    // int → double

    int number = 25;
    double numberDouble = number.toDouble();

    // double → int

    double pi = 3.14159;
    int piInteger = pi.toInt();

    print("String to int        : $ageInt");
    print("String to double     : $salaryDouble");
    print("int to String        : $marksString");
    print("int to double        : $numberDouble");
    print("double to int        : $piInteger");

    print("\n==============================================");
}