import "dart:io";

/// Program 1 : simple print Statement using do...while loop as shown below
// void main()
// {
//   int i = 0;
//   do
//     {
//       stdout.write("Hello World!\n");
//       i++;
//     } while(i < 5);
// }

/// Program 2 : Program of printing numbers from 0 to 10 as shown below:
// void main()
// {
//   int i = 0;
//   do
//     {
//       stdout.write(i);
//       stdout.write("\n");
//       i++;
//     } while(i <= 10);
// }

/// Program 3 : Program of printing numbers from 10 to 0 as shown below:
// void main()
// {
//   int i = 10;
//   do
//     {
//       stdout.write(i);
//       stdout.write("\n");
//       i--;
//     } while(i >= 0);
// }

/// Program 4 : Program of printing Even numbers between the 0 to user Entered number as shown below:
// void main()
// {
//   stdout.write("Enter the Number : ");
//   double num = double.parse(stdin.readLineSync()!);
//   double i = 0;
//   do
//     {
//       stdout.write(i);
//       stdout.write("\n");
//       i = i + 2;
//     } while(i <= num);
// }

/// Program 5 : Program of printing Odd numbers between the 0 to user Entered number as shown below:
// void main()
// {
//   stdout.write("Enter the Number : ");
//   double num = double.parse(stdin.readLineSync()!);
//   double i = 1;
//   do
//     {
//       stdout.write(i);
//       stdout.write("\n");
//       i = i + 2;
//     } while(i <= num);
// }

/// Program 6 : Program of Factorial of given number entered by user as shown below:
// void main()
// {
//   stdout.write("Enter the Number : ");
//   int num = int.parse(stdin.readLineSync()!);
//   int factorial = 1, i = 1;
//   do
//     {
//       factorial = factorial * i;
//       i++;
//     } while(i <= num);
//   stdout.write("Factorial of $num is : $factorial");
// }

/// Program 7 : Displaying Sum of n Natural numbers as shown below :
void main()
{
  stdout.write("Enter the Number : ");
  int num = int.parse(stdin.readLineSync()!);
  int total = 0, i = 0;
  do
    {
      total = total + i;
      i++;
    } while(i <= num);
  stdout.write("Total of $num is : $total");
}