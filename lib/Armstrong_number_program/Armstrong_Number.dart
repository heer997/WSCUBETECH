import 'dart:io';
import 'dart:math';

void main() {
  print("Enter any number to check for Armstrong number : ");
  var num = int.parse(stdin.readLineSync()!);
  int temp = num;
  int lengthDigits = 0;

  /// Finding the length of number given
  while (temp > 0) {
    temp = temp ~/ 10;
    lengthDigits++;
  }
  print("Length of Digits is : $lengthDigits");

  temp = num;
  double sum = 0;

  /// Getting the sum of digit's power
  while (temp > 0) {
    int rem = temp % 10;
    sum = sum + pow(rem, lengthDigits);
    temp = temp ~/ 10;
  }
  print("Sum is : $sum");

  if (sum == num) {
    print("The $num is an Armstrong number.");
  } else {
    print("The $num is not an Armstrong number.");
  }
}
