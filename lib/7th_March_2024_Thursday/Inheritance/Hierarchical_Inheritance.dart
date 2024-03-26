import "dart:io";

/// Hierarchical Inheritance
/// Example 1
// class A
// {
//   void one()
//   {
//     print("Method one is Called!");
//   }
// }
// class B extends A
// {
//   void two()
//   {
//     print("Method two is Called!");
//   }
// }
// class C extends A
// {
//   void three()
//   {
//     print("Method three is Called!");
//   }
// }
// void main()
// {
//   B obj = B();
//   obj.one();
//   obj.two();
//
//   C obj2 = C();
//   obj2.three();
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
}
class C extends A
{
  void div(double a, double b)
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
  B obj = B();
  C obj2 = C();

  obj.sum(num1, num2);
  obj.sub(num1, num2);
  obj.mul(num1, num2);
  obj2.div(num1, num2);
}