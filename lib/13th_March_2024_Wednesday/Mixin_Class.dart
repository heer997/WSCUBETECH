import "dart:io";

/// Mixin Class : Mixin is simply a class with no constructor.

/// Example 1
// void main()
// {
//   Student stdObj = Student();
//   Teacher teaObj = Teacher();
//   stdObj.roll();
//   teaObj.subject();
//   stdObj.name();
//   stdObj.age();
//   teaObj.name();
//   teaObj.age();
// }
// class Student with Name, Age
// {
//   void roll()
//   {
//     print("Roll Method is Called");
//   }
// }
// class Teacher with Name, Age
// {
//   void subject()
//   {
//     print("subject method is Called");
//   }
// }
// mixin Name
// {
//   void name()
//   {
//     print("name method is Called");
//   }
// }
// mixin Age
// {
//   void age()
//   {
//     print("age method is Called");
//   }
// }


/// Example 2
// void main()
// {
//   Doctor d = Doctor();
//   d.operation();
//   d.takeTemp();
//   d.takeTemp2();
//   d.clockIn();
//
//   Nurse n = Nurse();
//   n.takeCarePatient();
//   n.takeTemp();
//   n.takeTemp2();
//   n.clockIn();
//
//   Bartender b = Bartender();
//   b.bartender();
//   b.clockIn();
// }
// mixin Medical
// {
//   void takeTemp()
//   {
//     print("takeTemp method is Called");
//   }
// }
// mixin Medical2
// {
//   void takeTemp2()
//   {
//     print("takeTemp2 method is Called");
//   }
// }
// class Employee
// {
//   void clockIn()
//   {
//     print("clockIn method is Called");
//   }
// }
// class Doctor extends Employee with Medical, Medical2
// {
//   void operation()
//   {
//     print("operation method is Called");
//   }
// }
// class Nurse extends Employee with Medical, Medical2
// {
//   void takeCarePatient()
//   {
//     print("takeCarePatient method is Called");
//   }
// }
// class Bartender extends Employee
// {
//   void bartender()
//   {
//     print("bartender method is Called");
//   }
// }


/// Example 3
void main()
{
  stdout.write("Enter the Number 1 : ");
  double no1 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter the Number 2 : ");
  double no2 = double.parse(stdin.readLineSync()!);

  Mathematics maths = Mathematics();
  maths.addition(no1, no2);
  maths.subtraction(no1, no2);
  maths.multiplication(no1, no2);
  maths.division(no1, no2);
}
class Mathematics with Addition, Subtraction, Multiplication, Division
{
  void maths()
  {
    print("Mathematics method Called");
  }
}
mixin Addition
{
  void addition(double a, double b)
  {
    double Sum = a + b;
    stdout.write("Addition is : $Sum\n");
  }
}
mixin Subtraction
{
  void subtraction(double a, double b)
  {
    double sub = a - b;
    stdout.write("Subtraction is : $sub\n");
  }
}
mixin Multiplication
{
  void multiplication(double a, double b)
  {
    double mul = a * b;
    stdout.write("Multiplication is : $mul\n");
  }
}
mixin Division
{
  void division(double a, double b)
  {
    double div = a / b;
    stdout.write("Division is : $div\n");
  }
}