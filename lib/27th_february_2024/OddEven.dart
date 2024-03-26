import 'dart:io';

void main()
{
  stdout.write("Enter the Number: ");
  var num = int.parse(stdin.readLineSync()!);
  if(num%2 == 0)
    {
      stdout.write("Number is Even!");
    }
  else
    {
      stdout.write("Number is Odd!");
    }
}