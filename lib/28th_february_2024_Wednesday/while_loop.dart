import "dart:io";

/// Program 1 :
/// Program of printing numbers from 0 to 10 as shown below:
// void main()
// {
//   int i = 0;
//   while(i <= 10)
//   {
//     stdout.write(i);
//     i++;
//     stdout.write("\n");
//   }
// }

/// Program 2 :
/// Program of printing numbers from 10 to 0 as shown below:
// void main()
// {
//   int i = 10;
//   while(i >= 0)
//   {
//     stdout.write(i);
//     i--;
//     stdout.write("\n");
//   }
// }

/// Program 3 :
/// Program of printing Even numbers between the 0 to user Entered number as shown below:
// void main()
// {
//   stdout.write("Enter the Number : ");
//   double num = double.parse(stdin.readLineSync()!);
//   double i = 0;
//   while(i <= num)
//   {
//     if(i%2 == 0)
//       {
//         stdout.write(i);
//         stdout.write("\n");
//       }
//     i++;
//   }
// }

/// Program 4 :
/// Program of printing Odd numbers between the 0 to user Entered number as shown below:
// void main()
// {
//   stdout.write("Enter the Number : ");
//   double num = double.parse(stdin.readLineSync()!);
//   double i = 0;
//   while(i <= num)
//   {
//     if(i%2 == 1)
//       {
//         stdout.write(i);
//         stdout.write("\n");
//       }
//     i++;
//   }
// }

/// Program 5 :
/// Program of Factorial of given number entered by user as shown below:
void main()
{
  stdout.write("Enter the Number : ");
  int num = int.parse(stdin.readLineSync()!);
  var factorial = 1;
  int i = 1;
  while(i <= num)
  {
    factorial = factorial * i;
    i++;
  }
  stdout.write("Factorial of $num is : $factorial");
}

/// Program 6 : Displaying Sum of n Natural numbers as shown below :
// void main()
// {
//   stdout.write("Enter the Number : ");
//   double num = double.parse(stdin.readLineSync()!);
//   double i = 0, total = 0;
//   while(i <= num)
//   {
//     total = total + i;
//     i++;
//   }
//   stdout.write("Total of $num numbers is : $total");
// }