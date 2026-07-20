void main() {
  print("=========== LOGICAL OPERATORS ===========\n");

  bool condition1 = true;
  bool condition2 = false;

  print("Condition1 : $condition1");
  print("Condition2 : $condition2\n");

  // Logical AND
  print("condition1 && condition2 : ${condition1 && condition2}");

  // Logical OR
  print("condition1 || condition2 : ${condition1 || condition2}");

  // Logical NOT
  print("!condition1 : ${!condition1}");
  print("!condition2 : ${!condition2}");

  print("\n=========================================");
}