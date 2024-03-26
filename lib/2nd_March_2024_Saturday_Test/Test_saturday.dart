import "dart:io";

void main()
{
  stdout.write("Enter the quantity of Dal : ");
  double Dal = double.parse(stdin.readLineSync()!);
  stdout.write("Enter the quantity of Rice : ");
  double Rice = double.parse(stdin.readLineSync()!);
  stdout.write("Enter the quantity of Sugar : ");
  double Sugar = double.parse(stdin.readLineSync()!);

  GroceryPurchase gp = GroceryPurchase();
  gp.addition((Dal*80), (Rice*60), (Sugar*110));
}
class GroceryPurchase
{

  void addition(double a, double b, double c)
  {
    var sum = a + b + c;
    stdout.write("The Addition of Total bill is : $sum\n\n");
    var CGST = (sum + 18)/100;
    stdout.write("The Bill with SGST is : $CGST\n\n");
    var SGST = (sum + 19)/100;
    stdout.write("The Bill with CGST is : $SGST\n\n");
  }
}