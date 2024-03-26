import "dart:core";
import "dart:io";

/// A very commonly used collection in programming is an array. Dart represents arrays in the form of List
/// objects. A List is simply an ordered group of objects. The dart:core library provides the List class
/// that enables creation and manipulation of lists.

void main()
{
  List<int> listName = [1,2,3,4,5];
  /// Simple print the List
  stdout.write("Print the simple List : ");
  stdout.write(listName);
  stdout.write("\n");

  /// Adding the element in the List
  stdout.write("Add the Element 6 in the List : ");
  listName.add(6);
  stdout.write(listName);
  stdout.write("\n");

  /// addAll() Insert the multiple values to the given List and each value is separated by commas
  /// and enclosed with a square bracket ([]).
  stdout.write("Add the List of elements in the List : ");
  listName.addAll([10,9,8,7]);
  stdout.write(listName);
  stdout.write("\n");

  /// sort element
  stdout.write("Sorting the Element in the List : ");
  listName.sort();
  stdout.write(listName);
  stdout.write("\n");

  /// print using for loop
  stdout.write("Print the List element using for Loop : ");
  for(var i in listName)
    {
      stdout.write(i);
      stdout.write("\n");
    }
  stdout.write("\n");

  /// Insert element in list in specific position
  stdout.write("Insert element in the List in specific position : ");
  listName.insert(3, 100);
  stdout.write(listName);
  stdout.write("\n");

  /// insertAll() Insert the multiple values at the specific index position
  stdout.write("Insert the multiple values at the specific index position : ");
  listName.insertAll(2, [11,12,13,14,15]);
  stdout.write(listName);
  stdout.write("\n");

  /// Remove the element from specific position
  stdout.write("Remove the element from specific position : ");
  listName.removeAt(0);
  stdout.write(listName);
  stdout.write("\n");

  /// Remove element from the List
  stdout.write("Remove element from the List : ");
  listName.remove(10);
  stdout.write(listName);
  stdout.write("\n");

  /// Removing the Last element from the List
  stdout.write("Removing the Last element from the List : ");
  listName.removeLast();
  stdout.write(listName);
  stdout.write("\n");

  /// removeRange() removes the item within the specified range
  stdout.write("Removing the item within the specified Range : ");
  listName.removeRange(0, 2);
  stdout.write(listName);
  stdout.write("\n");

  /// Finding the List Length
  stdout.write("Finding the List Length : ");
  stdout.write(listName.length);
  stdout.write("\n");

  /// Reversing the List Elements
  stdout.write("Reversing the List Elements : ");
  stdout.write(listName.reversed);
  stdout.write("\n");

  /// Checking the element it contain in list
  stdout.write("Checking the element it contain in List : ");
  stdout.write(listName.contains(100));
  stdout.write("\n");
  stdout.write(listName.contains(200));
  stdout.write("\n");

  /// print the First Element
  stdout.write("Print the First Element : ");
  stdout.write(listName.first);
  stdout.write("\n");

  /// print the Last Element
  stdout.write("Print the Last Element : ");
  stdout.write(listName.last);
  stdout.write("\n");

  /// Single : It is used to check if the List has only one element and returns it
  /// The value is null if the iterable is empty or it contains more than one element.
  stdout.write("singleOrNull : It is used to check if the List has only one element and returns it "
      "The value is null if the iterable is empty or it contains more than one element : ");
  stdout.write(listName.singleOrNull);
  stdout.write("\n");

  /// isNotEmpty : It returns true if the List is not empty and false if the List is empty
  stdout.write("isNotEmpty : It returns true if the List is not empty and false if the List is empty : ");
  stdout.write(listName.isNotEmpty);
  stdout.write("\n");

  /// isEmpty : It returns true if the List is empty and false if the List is not empty
  stdout.write("isEmpty : It returns true if the List is empty and false if the List is not empty : ");
  stdout.write(listName.isEmpty);

}

/// OUTPUT :
/// Print the simple List : [1, 2, 3, 4, 5]
// Add the Element 6 in the List : [1, 2, 3, 4, 5, 6]
// Add the List of elements in the List : [1, 2, 3, 4, 5, 6, 10, 9, 8, 7]
// Sorting the Element in the List : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// Print the List element using for Loop : 1
// 2
// 3
// 4
// 5
// 6
// 7
// 8
// 9
// 10
//
// Insert element in the List in specific position : [1, 2, 3, 100, 4, 5, 6, 7, 8, 9, 10]
// Insert the multiple values at the specific index position : [1, 2, 11, 12, 13, 14, 15, 3, 100, 4, 5, 6, 7, 8, 9, 10]
// Remove the element from specific position : [2, 11, 12, 13, 14, 15, 3, 100, 4, 5, 6, 7, 8, 9, 10]
// Remove element from the List : [2, 11, 12, 13, 14, 15, 3, 100, 4, 5, 6, 7, 8, 9]
// Removing the Last element from the List : [2, 11, 12, 13, 14, 15, 3, 100, 4, 5, 6, 7, 8]
// Removing the item within the specified Range : [12, 13, 14, 15, 3, 100, 4, 5, 6, 7, 8]
// Finding the List Length : 11
// Reversing the List Elements : (8, 7, 6, 5, 4, 100, 3, 15, 14, 13, 12)
// Checking the element it contain in List : true
// false
// Print the First Element : 12
// Print the Last Element : 8
// singleOrNull : It is used to check if the List has only one element and returns it The value is null if the iterable is empty or it contains more than one element : null
// isNotEmpty : It returns true if the List is not empty and false if the List is empty : true
// isEmpty : It returns true if the List is empty and false if the List is not empty : false