import "dart:io";

void main()
{
  stdout.write("Enter the Number 1 : ");
  var no1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the Number 2 : ");
  var no2 = int.parse(stdin.readLineSync()!);
  var sum = no1 + no2;
  var sub = no1 - no2;
  var mul = no1 * no2;
  var div = no1/no2;
  stdout.write("\nThe Addition is : $sum\n");
  stdout.write("The Subtraction is : $sub\n");
  stdout.write("The Multiplication is : $mul\n");
  stdout.write("The Division is : $div\n");
}