import "dart:io";

/// Program of getting values by user and performing addition, subtraction, multiplication and division
/// using Class, Object, Methods as shown below:

void main()
{
  Calculation cal = Calculation();
  stdout.write("Enter the Number 1 : ");
  double one = double.parse(stdin.readLineSync()!);
  stdout.write("Enter the Number 2 : ");
  double two = double.parse(stdin.readLineSync()!);
  cal.addition(one, two);               /// Calling "addition()" method

  /// below is Named parameter passing in the subtraction() method
  cal.subtraction(a: one, b: two);      /// Calling "subtraction()" method
  cal.multiplication(one, two);         /// Calling "multiplication()" method

  /// below is Named parameter passing in the division() method
  cal.division(a: one, b: two);         /// Calling "division()" method
}
class Calculation
{
  void addition(double a, double b)
  {
    double sum = a + b;
    stdout.write("The Addition is : $sum\n");
  }
  /// Below is Named parameters in the subtraction() method
  void subtraction({required a, required b})
  {
    double sub = a - b;
    stdout.write("The Subtraction is : $sub\n");
  }
  void multiplication(double a, double b)
  {
    double mul = a * b;
    stdout.write("The Multiplication is : $mul\n");
  }
  /// Below is Named parameters in the division() method
  void division({required a, required b})
  {
    double div = a / b;
    stdout.write("The Division is : $div\n");
  }
}