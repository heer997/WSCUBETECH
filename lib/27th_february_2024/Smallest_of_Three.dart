import "dart:io";

void main()
{
  stdout.write("Enter the Number 1 : ");
  var num1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the Number 2 : ");
  var num2 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the Number 3 : ");
  var num3 = int.parse(stdin.readLineSync()!);

  if(num1 < num2 && num1 < num3)
    {
      stdout.write("Number 1 is Smallest Number!");
    }
  else if(num2 < num1 && num2 < num3)
    {
      stdout.write("Number 2 is Smallest Number!");
    }
  else
    {
      stdout.write("Number 3 is Smallest Number!");
    }
}