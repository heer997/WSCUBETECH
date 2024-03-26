import "dart:io";

/// Static keyword :
/// The static keyword is used for a class-level variable and method that is the same for every instance
/// of a class, this means if a data member is static, it can be accessed without creating an object.
class A
{
  static void sum(double a, double b)
  {
    double c = a + b;
    stdout.write("The Addition is : $c\n");
  }

  static void sub(double a, double b)
  {
    double c = a - b;
    stdout.write("The Subtraction is : $c\n");
  }
}
class B
{
  static void mul(double a, double b)
  {
    double c = a * b;
    stdout.write("The Multiplication is : $c\n");
  }
}
class C
{
  static void div(double a, double b)
  {
    double c = a / b;
    stdout.write("The Division is : $c\n");
  }
}
void main()
{
  stdout.write("Enter the value of Number 1 : ");
  double num1 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter the value of Number 2 : ");
  double num2 = double.parse(stdin.readLineSync()!);
  A.sum(num1, num2);
  A.sub(num1, num2);
  B.mul(num1, num2);
  C.div(num1, num2);
}