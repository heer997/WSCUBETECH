import "dart:io";

/// Program of getting five marks by user and performing addition with method of Positional parameters
/// as well as Named parameters and Parameterised Constructor with creating Object of Class as shown below :

void main()
{
  stdout.write("Enter the Marks 1 : ");
  double one = double.parse(stdin.readLineSync()!);
  stdout.write("Enter the Marks 2 : ");
  double two = double.parse(stdin.readLineSync()!);
  stdout.write("Enter the Marks 3 : ");
  double three = double.parse(stdin.readLineSync()!);
  stdout.write("Enter the Marks 4 : ");
  double four = double.parse(stdin.readLineSync()!);
  stdout.write("Enter the Marks 5 : ");
  double five = double.parse(stdin.readLineSync()!);

  Mathematics maths = Mathematics(one, two, three, four, five); /// Creating Object of Class
  maths.addition(one, two, three, four, five);                  /// Calling "addition()" method
  maths.total(a: one, b: two, c: three, d: four, e: five);      /// Calling "total()" method
}
class Mathematics
{
  /// Addition by using simple method with Positional parameters
  void addition(double a, double b, double c, double d, double e)
  {
    var sum = a + b + c + d + e;
    stdout.write("The Addition is : $sum\n");
  }

  /// Addition by using simple method with Named parameters
  void total({required a, required b, required c, required d, required e})
  {
    var total = a + b + c + d + e;
    stdout.write("The Total of Five marks is : $total\n");
  }

  /// Addition by using parameterised Constructor
  Mathematics(double a, double b, double c, double d, double e)
  {
    var addition = a + b + c + d + e;
    stdout.write("The addition of Five marks is : $addition\n");
  }
}