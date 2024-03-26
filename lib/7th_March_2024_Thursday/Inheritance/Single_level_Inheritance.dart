import "dart:io";

/// Single Level Inheritance
/// Example 1
// class A
// {
//   void name1()
//   {
//     print("Name1 method is called!");
//   }
// }
// class B extends A
// {
//   void name2()
//   {
//     print("Name2 method is called!");
//   }
// }
// void main()
// {
//   B obj = B();
//   obj.name1();
//   obj.name2();
// }

/// Example 2
class A
{
  void sum(double a, double b)
  {
    double c = a + b;
    stdout.write("The Addition is : $c\n");
  }

  void sub(double a, double b)
  {
    double c = a - b;
    stdout.write("The Subtraction is : $c\n");
  }
}
class B extends A
{
  void mul(double a, double b)
  {
    double c = a * b;
    stdout.write("The Multiplication is : $c\n");
  }

  void div(double a, double b)
  {
    double c = a/b;
    stdout.write("The Division is : $c\n");
  }
}
void main()
{
  stdout.write("Enter the value of Number 1 : ");
  double num1 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter the value of Number 2 : ");
  double num2 = double.parse(stdin.readLineSync()!);
  B obj = B();
  obj.sum(num1, num2);
  obj.sub(num1, num2);
  obj.mul(num1, num2);
  obj.div(num1, num2);
}