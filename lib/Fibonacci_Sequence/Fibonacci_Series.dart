import 'dart:io';

/// 1st Method for Fibonacci Series
// void main()
// {
//   print("Please Enter the no. of terms of Fibonacci sequence to print : ");
//   var terms = int.parse(stdin.readLineSync().toString());
//
//   var no1 = 0;
//   var no2 = 1;
//
//   print(no1);
//   print(no2);
//
//   for(int i = 3; i <= terms; i++)
//     {
//       int sum = no1 + no2;
//       print(sum);
//       no1 = no2;
//       no2 = sum;
//     }
// }

/// 2nd Method for Fibonacci Series
void main() {
  print("Please Enter the no. of terms of Fibonacci sequence to print : ");
  var terms = int.parse(stdin.readLineSync().toString());

  List<int> fiboSeq = [0, 1];

  while (fiboSeq.length < terms) {
    int sum = fiboSeq[fiboSeq.length - 1] + fiboSeq[fiboSeq.length - 2];
    fiboSeq.add(sum);
  }
  print(fiboSeq);
}
