import "dart:io";

/// Multilevel Inheritance
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
// class C extends B
// {
//   void three()
//   {
//     print("Method three is Called!");
//   }
// }
// void main()
// {
//   C obj = C();
//   obj.one();
//   obj.two();
//   obj.three();
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
class C extends B
{
  void div(double a, double b)
  {
    double c = a/b;
    stdout.write("The Division is : $c\n");
  }
}
void main()
{
  stdout.write("Enter the value of number 1 : ");
  double num1 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter the value of Number 2 : ");
  double num2 = double.parse(stdin.readLineSync()!);
  C obj = C();
  obj.sum(num1, num2);
  obj.sub(num1, num2);
  obj.mul(num1, num2);
  obj.div(num1, num2);
}