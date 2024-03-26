import 'dart:io';

/// Program 1 :
/// Program of printing numbers from 0 to 10 as shown below:
// void main()
// {
//   for(int i = 0; i <= 10; i++)
//     {
//       stdout.write(i);
//       stdout.write("\n");
//     }
// }

/// Program 2 :
/// Program of printing numbers from 10 to 0 as shown below:
// void main()
// {
//   for(int i = 10; i >= 0; i--)
//     {
//       stdout.write(i);
//       stdout.write("\n");
//     }
// }

/// Program 3 :
/// Program of printing Even numbers between the 0 to user Entered number as shown below:
// void main()
// {
//   stdout.write("Enter the Number : ");
//   double num = double.parse(stdin.readLineSync()!);
//   for(double i = 0; i <= num; i++)
//     {
//       if(i%2 == 0)
//         {
//           stdout.write(i);
//           stdout.write("\n");
//         }
//     }
// }

/// Program 4 :
/// Program of generating the simple pattern program as shown below:
// void main()
// {
//   for(int i = 1; i <= 5; i++)
//     {
//       for(int j = 1; j <= 5; j++)
//         {
//           stdout.write("*");
//         }
//       stdout.write("\n");
//     }
// }
///     OUTPUT:
///     *****
///     *****
///     *****
///     *****
///     *****


/// Program 5 :
/// Program of generating the user entered numbered pattern program as shown below:
// void main()
// {
//   stdout.write("Enter the Number : ");
//   double num = double.parse(stdin.readLineSync()!);
//
//   for(int i = 1; i <= num; i++)
//     {
//       for(int j = 1; j <= i; j++)
//         {
//           stdout.write(i);
//         }
//       stdout.write("\n");
//     }
// }
/// if user enter 5 then the output is shown below:
///     Enter the Number : 5
///     1
///     22
///     333
///     4444
///     55555


/// Program 6 :
/// Program of Factorial of given number entered by user as shown below:
// void main()
// {
//   stdout.write("Enter the Number : ");
//   int num = int.parse(stdin.readLineSync()!);
//   var factorial = 1;
//   for(int i = 1; i <= num; i++)
//     {
//       factorial = factorial * i;
//     }
//   stdout.write("Factorial of $num is : $factorial");
// }


/// Program 7 :
// void main()
// {
//   stdout.write("Enter the Number : ");
//   double num = double.parse(stdin.readLineSync()!);
//   for(int i = 0; i <= num; i++)
//     {
//       if(i%3 == 0)
//         {
//           stdout.write(i*3);
//           stdout.write("\n");
//         }
//       stdout.write(i);
//       stdout.write("\n");
//     }
// }


/// Program 8 : Program of performing Break statement in printing numbers as shown below :
// void main()
// {
//   stdout.write("Enter the Number : ");
//   double num = double.parse(stdin.readLineSync()!);
//   for(int i = 0; i <= num; i++)
//     {
//       if(i == 7)
//         {
//           break;
//         }
//       stdout.write(i);
//       stdout.write("\n");
//     }
// }


/// Program 9 : Program of performing Continue Statement in printing numbers as shown below :
// void main()
// {
//   stdout.write("Enter the Number : ");
//   double num = double.parse(stdin.readLineSync()!);
//   for(int i = 0; i <= num; i++)
//     {
//       if(i == 5)
//         {
//           continue;
//         }
//       stdout.write(i);
//       stdout.write("\n");
//     }
// }

/// Program 10 : Displaying Sum of n Natural numbers as shown below :
void main()
{
  stdout.write("Enter the Number : ");
  double num = double.parse(stdin.readLineSync()!);
  int total = 0;
  for(int i = 0; i <= num; i++)
    {
      total = total + i;
    }
  stdout.write("Total is : $total");
}