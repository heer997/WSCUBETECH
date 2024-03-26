import "dart:io";

/// Data Abstraction : show only functionality and hiding background details this called data abstraction.
/// Abstract classes are classes that cannot be initialized. It is used to define the behavior
/// of a class that can be inherited by other classes. An abstract class is declared using
/// the keyword abstract.
///
///Abstract Method
/// An abstract method is a method that is declared without an implementation.
/// It is declared with a semicolon (;) instead of a method body.
///
///Why We Need Abstract Class
/// Subclasses of an abstract class must implement all the abstract methods of the abstract class.
/// It is used to achieve abstraction in the Dart programming language.
///
///Note: The abstract class is used to define the behavior of a class that can be inherited by
/// other classes. You can define an abstract method inside an abstract class.
///
///Constructor In Abstract Class:
/// You can’t create an object of an abstract class. However, you can define a constructor
/// in an abstract class. The constructor of an abstract class is called when an object
/// of a subclass is created.

/// Example 1 :
// abstract class A  /// Abstract class
// {
//   void getData(); /// Abstract method
//
//   void showData();  /// Abstract method
// }
// class B extends A   /// Calling Abstract class
// {
//   @override
//   void getData()
//   {
//     print("Call from getData");
//   }
//
//   @override
//   void showData()
//   {
//     print("Call from showData");
//   }
// }
// void main()
// {
//   B obj = B();
//   obj.getData();
//   obj.showData();
// }

/// Example 2
void main() {
  stdout.write("Enter the Number 1 : ");
  double no1 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter the Number 2 : ");
  double no2 = double.parse(stdin.readLineSync()!);

  Addition additionObject = Addition(no1, no2);
  Subtraction subtractionObject = Subtraction(no1, no2);
  Multiplication multiplicationObject = Multiplication(no1, no2);
  Division divisionObject = Division(no1, no2);

  additionObject.calculation();
  subtractionObject.calculation();
  multiplicationObject.calculation();
  divisionObject.calculation();
}

abstract class Mathematics {
  double num1, num2;

  Mathematics(this.num1, this.num2);

  void calculation();
}

class Addition extends Mathematics {
  Addition(super.num1, super.num2);

  @override
  void calculation() {
    var sum = num1 + num2;
    print("The Addition is : $sum");
  }
}

class Subtraction extends Mathematics {
  Subtraction(super.num1, super.num2);

  @override
  void calculation() {
    var sub = num1 - num2;
    print("The Subtraction is : $sub");
  }
}

class Multiplication extends Mathematics {
  Multiplication(super.num1, super.num2);

  @override
  void calculation() {
    var mul = num1 * num2;
    print("The Multiplication is : $mul");
  }
}

class Division extends Mathematics {
  Division(super.num1, super.num2);

  @override
  void calculation() {
    var div = num1 / num2;
    print("The Division is : $div");
  }
}
