import 'dart:io';

void main()
{
  stdout.write("Enter the Number 1 : ");
  var no1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the Number 2 : ");
  var no2 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the Number 3 : ");
  var no3 = int.parse(stdin.readLineSync()!);

  if(no1 > no2 && no1 > no3)
    {
      stdout.write("Number 1 is Greatest number!");
    }
  else if(no2 > no1 && no2 > no3)
    {
      stdout.write("Number 2 is Greatest number!");
    }
  else
    {
      stdout.write("Number 3 is Greatest number!");
    }
}