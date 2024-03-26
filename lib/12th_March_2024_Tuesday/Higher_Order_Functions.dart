import "dart:io";

/// Higher-Order Functions (HOFs) :
/// A function that takes functions as an argument or returns a function is a higher order function.


///   EXAMPLE 1 :
// void main()
// {
//   /// Example One : Passing Function to Higher-Order Function
//   addNumbers(a, b) => print(a + b);
//   someOtherFunction("Hello World", addNumbers);
//
//   /// Example Two : Receiving Function from Higher-Order Function
//   var myFunc = taskToPerform();
//   print(myFunc(10));  ///multiplyFour(10)       ///number * 4       ///10*4       ///OUTPUT : 40
//
// }
//
// /// Example One : Accepts function as parameter
// void someOtherFunction(String message, Function myFunction) /// Higher Order Function
// {
//   print(message);
//   myFunction(2, 4);   /// addNumbers(2, 4)      ///print(a + b);    ///print(2 + 4);    ///OUTPUT: 6
// }
//
// /// Example Two : Returns a function
// Function taskToPerform()  /// Higher Order Function
// {
//   multiplyFour(int number) => number * 4;
//   return multiplyFour;
// }


/// EXAMPLE 2 :
// void main()
// {
//   Function addTwoNumbers = (int a, int b){
//     int sum = a + b;
//     return sum;
//   };
//   myNewFunction("Hello World", addTwoNumbers);
// }
// myNewFunction(String msg, Function summation) {
//   print(msg);
//
//   print(summation(6, 5));
// }


/// Lambda Function : Function without name is called as Lambda Functions OR Anonymous Function.

/// Example 1 :
void main()
{
  Function summation = (int a, int b) {
    int sum = a + b;
    print(sum);
  };

  summation(6,8);

  Function square = (int n) {
    return n * n;
  };

  print(square(5));
}