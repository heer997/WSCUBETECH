import 'dart:io';

void main() {
  stdout.write("Enter the number to check for Prime Number : ");
  var number = int.parse(stdin.readLineSync()!);

  bool isPrime = true;

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      isPrime = false;
      break;
    }
  }

  if (isPrime) {
    print("The $number is a Prime Number\n");
  } else {
    print("The $number is not a Prime Number\n");
  }
}
