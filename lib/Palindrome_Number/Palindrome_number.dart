import 'dart:io';

/// 1st Method to find Palindrome Number
// void main() {
//   print("Enter the number to find Palindrome Number : ");
//   var num = stdin.readLineSync().toString();
//
//   String reverse = "";
//   int index;
//
//   if (num.isNotEmpty) {
//     for (int i = 1; i <= num.length; i++) {
//       index = num.length - i;
//       reverse += num[index];
//     }
//   }
//   print(reverse);
//   if (reverse == num) {
//     print("$num is Palindrome Number");
//   } else {
//     print("$num is not Palindrome Number");
//   }
// }

/// 2nd Method to find Palindrome Number
// void main() {
//   print("Enter the Number to find Palindrome Number : ");
//   var originalNumber = int.parse(stdin.readLineSync()!);
//
//   var num = originalNumber;
//
//   int reversed = 0;
//
//   while (num != 0) {
//     int rem = num % 10;
//     reversed = reversed * 10 + rem;
//     num = num ~/ 10;
//   }
//   if (reversed == originalNumber) {
//     print("$originalNumber is Palindrome Number.");
//   } else {
//     print("$originalNumber is not Palindrome Number.");
//   }
// }

/// 3rd Method to find Palindrome Number
void main() {
  stdout.write("Enter any number to check for Palindrome: ");

  /// For String to check for Palindrome Number :
  var name = stdin.readLineSync().toString();

  var reverseStr = name.split("").reversed.toList().join().toString();

  print(reverseStr);

  if (name.toUpperCase() == reverseStr.toUpperCase()) {
    print("The $name is a Palindrome.");
  } else {
    print("The $name is not a Palindrome.");
  }

  /// For Integer Number to check for Palindrome Number :
  // var num = int.parse(stdin.readLineSync().toString());
  //
  // int sum = 0;
  //
  // int temp = num;
  //
  // while (temp > 0) {
  //   int rem = temp % 10;
  //   sum = (sum * 10) + rem;
  //   temp = temp ~/ 10;
  // }
  //
  // print("Sum is : $sum");
  //
  // if (sum == num) {
  //   print("$num is a Palindrome Number: ");
  // } else {
  //   print("$num is Not a Palindrome Number: ");
  // }
}
