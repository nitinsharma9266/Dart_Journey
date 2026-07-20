# 📘 Dart Mastery Course

# 📖 02_Operators - Notes

---

# What is an Operator?

## Definition

**An operator is a special symbol that performs an operation on one or more operands (values or variables) and produces a result.**

## Hindi Explanation

Operator ek special symbol hota hai jo variables ya values par operation perform karta hai aur result return karta hai.

Example:

```dart
int a = 20;
int b = 10;

print(a + b);
```

Output

```
30
```

---

# Types of Operators Covered

* Arithmetic Operators
* Assignment Operators
* Relational Operators
* Logical Operators

---

# Arithmetic Operators

## Definition

**Arithmetic operators are used to perform mathematical operations such as addition, subtraction, multiplication, division, modulus, and integer division.**

## Hindi Explanation

Arithmetic operators mathematical calculations karne ke liye use hote hain.

---

## Addition (+)

### Definition

Adds two numbers.

### Syntax

```dart
a + b
```

Example

```dart
int a = 20;
int b = 10;

print(a + b);
```

Output

```
30
```

---

## Subtraction (-)

### Definition

Subtracts one number from another.

### Syntax

```dart
a - b
```

Example

```dart
print(20 - 10);
```

Output

```
10
```

---

## Multiplication (*)

### Definition

Multiplies two numbers.

### Syntax

```dart
a * b
```

Example

```dart
print(20 * 10);
```

Output

```
200
```

---

## Division (/)

### Definition

Divides one number by another and always returns a **double** value.

### Syntax

```dart
a / b
```

Example

```dart
print(20 / 10);
```

Output

```
2.0
```

---

## Integer Division (~/)

### Definition

Divides two numbers and returns only the integer part of the result.

### Syntax

```dart
a ~/ b
```

Example

```dart
print(25 ~/ 4);
```

Output

```
6
```

---

## Modulus (%)

### Definition

Returns the remainder after division.

### Syntax

```dart
a % b
```

Example

```dart
print(25 % 4);
```

Output

```
1
```

---

# Assignment Operators

## Definition

**Assignment operators are used to assign or update values stored in variables.**

## Hindi Explanation

Assignment operators variable me value store karne ya update karne ke liye use hote hain.

---

## Assignment (=)

```dart
int x = 10;
```

---

## Add and Assign (+=)

```dart
int x = 10;

x += 5;

print(x);
```

Output

```
15
```

---

## Subtract and Assign (-=)

```dart
int x = 10;

x -= 3;

print(x);
```

Output

```
7
```

---

## Multiply and Assign (*=)

```dart
int x = 10;

x *= 2;

print(x);
```

Output

```
20
```

---

## Divide and Assign (/=)

```dart
double x = 20;

x /= 2;

print(x);
```

Output

```
10.0
```

---

# Type Conversion

## Definition

**Type conversion is the process of converting a value from one data type to another.**

## Hindi Explanation

Ek data type ki value ko dusre data type me convert karna **Type Conversion** kehlata hai.

---

# String → int

### Definition

Converts a numeric string into an integer.

```dart
String age = "18";

int number = int.parse(age);
```

---

# String → double

### Definition

Converts a numeric string into a double.

```dart
String salary = "25000.50";

double amount = double.parse(salary);
```

---

# int → String

### Definition

Converts an integer into a string.

```dart
int marks = 95;

String value = marks.toString();
```

---

# int → double

### Definition

Converts an integer into a double.

```dart
int number = 25;

double result = number.toDouble();
```

---

# double → int

### Definition

Converts a double into an integer by removing the decimal part.

```dart
double price = 99.99;

int value = price.toInt();
```

Output

```
99
```

---

# int.tryParse()

### Definition

Safely converts a string into an integer. If conversion fails, it returns **null** instead of throwing an exception.

Example

```dart
String value = "ABC";

int? number = int.tryParse(value);

print(number);
```

Output

```
null
```

---

# Relational Operators

## Definition

**Relational operators compare two values and always return a boolean (`true` or `false`).**

## Hindi Explanation

Relational operators do values ki comparison karte hain aur result me `true` ya `false` return karte hain.

| Operator | Meaning                  |
| -------- | ------------------------ |
| >        | Greater Than             |
| <        | Less Than                |
| >=       | Greater Than or Equal To |
| <=       | Less Than or Equal To    |
| ==       | Equal To                 |
| !=       | Not Equal To             |

Example

```dart
int a = 20;
int b = 10;

print(a > b);
print(a == b);
print(a != b);
```

Output

```
true
false
true
```

---

# Logical Operators

## Definition

**Logical operators are used to combine or reverse boolean expressions.**

## Hindi Explanation

Logical operators ek ya ek se zyada boolean conditions par operation perform karte hain.

| Operator | Meaning     |   |            |
| -------- | ----------- | - | ---------- |
| &&       | Logical AND |   |            |
|          |             |   | Logical OR |
| !        | Logical NOT |   |            |

---

## Logical AND (&&)

### Definition

Returns **true** only if both conditions are true.

Example

```dart
bool a = true;
bool b = false;

print(a && b);
```

Output

```
false
```

---

## Logical OR (||)

### Definition

Returns **true** if at least one condition is true.

Example

```dart
bool a = true;
bool b = false;

print(a || b);
```

Output

```
true
```

---

## Logical NOT (!)

### Definition

Reverses the boolean value.

Example

```dart
bool login = false;

print(!login);
```

Output

```
true
```

---

# Programs Completed

* Calculator
* Circle Area Calculator
* Rectangle Area Calculator
* Simple Interest Calculator
* Type Conversion
* Relational Operators
* Logical Operators

---

# Best Practices

* Use meaningful variable names.
* Prefer `const` for fixed values like `pi`.
* Use `tryParse()` when taking numeric input from users.
* Write clean and properly indented code.
* Keep one concept per program while learning.
* Always test your code with different inputs.

---

# Interview Questions

## Operators

1. What is an operator?
2. How many types of operators have you learned?

## Arithmetic Operators

3. What are arithmetic operators?
4. What is the difference between `/` and `~/`?
5. What does the `%` operator do?

## Assignment Operators

6. What is an assignment operator?
7. Explain `+=` and `-=` with examples.

## Type Conversion

8. What is type conversion?
9. What is the difference between `int.parse()` and `int.tryParse()`?
10. What is the difference between `toInt()` and `toDouble()`?
11. Why do we use `toString()`?

## Relational Operators

12. What is a relational operator?
13. Which data type is returned by relational operators?
14. What is the difference between `=` and `==`?

## Logical Operators

15. What is a logical operator?
16. Explain `&&`, `||`, and `!` with examples.
17. When do we use logical operators in real-world applications?

---

# Summary

In this module, you learned:

* Operators
* Arithmetic Operators
* Assignment Operators
* Type Conversion
* Relational Operators
* Logical Operators
* Real-world usage of operators
* Best coding practices
* Interview-oriented concepts

These operators are the foundation of writing logic in Dart. They will be used in the upcoming topics such as `if`, `if-else`, loops, functions, collections, and Flutter application development.
