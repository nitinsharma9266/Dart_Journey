# 📘 Dart Mastery Course

# 📖 01_Basics - Notes (Part 1)

---

# What is Dart?

## Definition

**Dart is a modern, object-oriented, strongly typed, and client-optimized programming language developed by Google. It is mainly used to build cross-platform applications for Android, iOS, Web, Desktop, and Server.**

## Hindi Explanation

Dart ek modern programming language hai jo **Google** ne develop ki hai. Iska sabse bada use **Flutter** ke saath Android aur iOS apps banane ke liye hota hai. Ek hi code se multiple platforms ke liye application banayi ja sakti hai.

---

# Features of Dart

* Object-Oriented Programming Language (OOP)
* Strongly Typed
* Easy to Learn
* Fast Execution
* Garbage Collection Support
* Rich Standard Library
* Cross Platform Development
* Developed by Google
* Used with Flutter

---

# Advantages of Dart

* Single codebase for Android & iOS
* Simple Syntax
* High Performance
* Easy Debugging
* Hot Reload Support in Flutter
* Large Community Support

---

# First Dart Program

```dart
void main() {
  print("Hello World");
}
```

## Output

```text
Hello World
```

---

# main() Function

## Definition

**The `main()` function is the entry point of every Dart program. Program execution always starts from the `main()` function.**

## Hindi Explanation

Har Dart program `main()` function se start hota hai. Agar `main()` nahi hoga to program execute nahi hoga.

## Syntax

```dart
void main() {

}
```

---

# print() Function

## Definition

**The `print()` function is used to display output on the console.**

## Hindi Explanation

`print()` console par output dikhane ke liye use hota hai.

Example

```dart
print("Hello");
```

Output

```text
Hello
```

---

# Comments

## Definition

**Comments are used to explain the code. They are ignored by the compiler.**

## Hindi Explanation

Comments sirf programmer ke liye hote hain. Compiler inhe execute nahi karta.

---

## Single Line Comment

```dart
// This is a single line comment
```

---

## Multi Line Comment

```dart
/*
This is
a multi-line
comment.
*/
```

---

# Variable

## Definition

**A variable is a named memory location used to store data that can be changed during program execution.**

## Hindi Explanation

Variable memory me data store karta hai. Program chalne ke dauran iski value badal sakti hai.

---

## Syntax

```dart
dataType variableName = value;
```

Example

```dart
String name = "Nitin";
int age = 18;
```

---

# Rules for Variable Names

* Cannot start with a number
* Cannot contain spaces
* Cannot use reserved keywords
* Should be meaningful
* Follow camelCase naming convention

---

Correct

```dart
studentName
totalMarks
circleArea
```

Wrong

```dart
1name
student name
class
```

---

# Data Types

## Definition

**A data type specifies what kind of value a variable can store.**

## Hindi Explanation

Data type batata hai ki variable kis type ka data store karega.

---

# int

## Definition

Stores whole numbers.

Example

```dart
int age = 18;
```

Output

```text
18
```

---

# double

## Definition

Stores decimal numbers.

Example

```dart
double salary = 25000.50;
```

Output

```text
25000.5
```

---

# String

## Definition

Stores text.

Example

```dart
String city = "Delhi";
```

Output

```text
Delhi
```

---

# bool

## Definition

Stores only two values: `true` or `false`.

Example

```dart
bool isStudent = true;
```

Output

```text
true
```

---

# Dynamic

## Definition

The `dynamic` keyword allows a variable to store values of different data types.

Example

```dart
dynamic value = 10;

value = "Hello";

value = true;
```

---

# var Keyword

## Definition

The `var` keyword lets Dart automatically determine the variable's data type based on the assigned value.

Example

```dart
var name = "Nitin";
var age = 18;
```

---

# final Keyword

## Definition

A `final` variable can be assigned only once at runtime.

Example

```dart
final country = "India";
```

---

# const Keyword

## Definition

A `const` variable is a compile-time constant. Its value must be known before the program starts.

Example

```dart
const pi = 3.14;
```

---

# Difference Between final and const

| final               | const                        |
| ------------------- | ---------------------------- |
| Runtime constant    | Compile-time constant        |
| Value assigned once | Value fixed before execution |

---

# User Input

## Definition

User input allows the program to receive data from the keyboard during execution.

---

Import Library

```dart
import 'dart:io';
```

---

String Input

```dart
String? name = stdin.readLineSync();
```

---

Integer Input

```dart
int age = int.parse(stdin.readLineSync()!);
```

---

Double Input

```dart
double salary = double.parse(stdin.readLineSync()!);
```

---

# String Interpolation

## Definition

String interpolation is used to insert variables or expressions directly into a string.

---

Variable

```dart
String name = "Nitin";

print("Name : $name");
```

---

Expression

```dart
int a = 10;
int b = 20;

print("Sum = ${a + b}");
```

---

# Camel Case Naming

## Definition

Camel case is a naming convention where the first word starts with a lowercase letter and every new word starts with a capital letter.

Correct

```dart
studentName
firstNumber
circleArea
simpleInterest
```

Wrong

```dart
Student_Name
student_name
StudentName
```

---

# Best Practices

* Use meaningful variable names.
* Follow camelCase naming convention.
* Always indent your code properly.
* Write comments only when necessary.
* Use `const` whenever the value never changes.
* Use `final` when the value is assigned once at runtime.
* Keep your code clean and readable.

---

# Programs Completed

* Hello World
* Personal Information
* Variables
* Data Types
* User Input
* Student Information Program

---

# Interview Questions

### Basic

1. What is Dart?
2. Who developed Dart?
3. Why is Dart used with Flutter?
4. What is the `main()` function?
5. What is the `print()` function?

### Variables

6. What is a variable?
7. What are the rules for naming variables?
8. What is camelCase?

### Data Types

9. What is a data type?
10. Difference between `int` and `double`?
11. What is `String`?
12. What is `bool`?
13. What is `dynamic`?
14. What is `var`?

### Constants

15. Difference between `final` and `const`?

### User Input

16. How do you take user input in Dart?
17. Why do we use `int.parse()`?
18. Why do we use `double.parse()`?

### String Interpolation

19. What is string interpolation?
20. Difference between `$variable` and `${expression}`?

---

# Summary

In this module, you learned:

* Introduction to Dart
* Features of Dart
* Advantages of Dart
* Hello World Program
* main() Function
* print() Function
* Comments
* Variables
* Data Types
* final
* const
* var
* dynamic
* User Input
* String Interpolation
* Naming Conventions
* Best Practices

These concepts form the foundation of Dart programming and will be used throughout the course.
