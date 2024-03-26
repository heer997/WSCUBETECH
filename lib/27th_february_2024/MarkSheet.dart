import "dart:io";

void main()
{
  stdout.write("Enter the Marks of Physics : ");
  var physics = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the Marks of Maths : ");
  var maths = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the Marks of Chemistry : ");
  var chemistry = int.parse(stdin.readLineSync()!);
  var total = physics + maths + chemistry;
  stdout.write("Total is : $total\n");
  if(total < 33)
    {
      stdout.write("Student Failed!\n");
    }
  else if(total > 33 && total < 50)
    {
      stdout.write("Student got Grade C\n");
    }
  else if(total > 50 && total < 70)
    {
      stdout.write("Student got Grade B\n");
    }
  else if(total > 70)
    {
      stdout.write("Student got Grade A and also Got Distinction!\n");
    }
  else
    {
      stdout.write("Student was Absent!\n");
    }

}