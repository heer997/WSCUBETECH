import "dart:io";

/// final keyword : The final keyword is used to hardcode the values of the variable and it cannot be
/// altered in future, neither any kind of operations performed on these variables can alter its value (state).

/// const keyword : The Const keyword in Dart behaves exactly like the final keyword. The only difference
/// between final and const is that the const makes the variable constant from compile-time only.

void main()
{
  ///Assigning value to name1
  /// variable without datatype
  final name1 = "Name1 is present here";
  print(name1);

  /// Assigning value to name2
  /// variable with datatype
  final String name2;
  name2 = "Name2 is present here";
  print(name2);


  ///Assigning value to name3
  /// variable without datatype
  const name3 = "Name3 is present here";
  print(name3);

  /// Assigning value to name4
  /// variable with datatype
  const name4 = "Name4 is present here";
  print(name4);
}
