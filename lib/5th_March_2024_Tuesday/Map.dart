import "dart:io";

///Map type allows you to manage a collection of key/value pairs. The Map type is
/// similar to the Dictionary type in other programming languages.
/// In a map, keys are unique. Each key has an associated value. Unlike keys, values can
/// be duplicated. Generally, you cannot add or remove keys while performing an
/// operation on the map.

void main()
{
  /// Creating a Map
  stdout.write("Map is : ");
  Map<String, dynamic> fruits = {
    "apple" : 1,
    "banana" : 2,
    "orange" : 3
  };
  stdout.write(fruits);
  stdout.write("\n");

  /// Accessing elements from a Map
  stdout.write("Accessing elements from a Map : ");
  stdout.write(fruits["banana"]);
  stdout.write("\n");

  /// Adding element to a Map
  stdout.write("Adding element to a Map : ");
  fruits["strawberry"] = 4;
  stdout.write(fruits);
  stdout.write("\n");

  /// Updating elements from a Map
  stdout.write("Updating element from a Map : ");
  fruits["orange"] = 10;
  stdout.write(fruits);
  stdout.write("\n");

  /// Removing elements
  stdout.write("Removing elements from a Map : ");
  fruits.remove("strawberry");
  stdout.write(fruits);
  stdout.write("\n");

  /// map.isEmpty -> return true if the map has no element.
  /// map.isNotEmpty -> return true if the map has at least one element
  /// map.length -> return the number of elements of the Map.
  /// map.keys -> return a list of keys.
  /// map.values -> return a list of values.

  /// isEmpty : It returns true if the List is empty and false if the List is not empty
  stdout.write("isEmpty : It returns true if the List is empty and false if the List is not empty : ");
  stdout.write(fruits.isEmpty);
  stdout.write("\n");

  /// isNotEmpty : It returns true if the List is not empty and false if the List is empty
  stdout.write("isNotEmpty : It returns true if the List is not empty and false if the List is empty : ");
  stdout.write(fruits.isNotEmpty);
  stdout.write("\n");

  /// Finding the Map length
  stdout.write("Finding the Map Length : ");
  stdout.write(fruits.length);
  stdout.write("\n");

  /// Printing All the keys
  stdout.write("Printing all the keys : ");
  stdout.write(fruits.keys);
  stdout.write("\n");

  /// Printing All the values
  stdout.write("Printing all the values : ");
  stdout.write(fruits.values);
  stdout.write("\n");

  /// Checking the existence of keys or values
  stdout.write("Checking the existence of keys or values : ");
  stdout.write(fruits.containsKey("apple"));
  stdout.write("\n");
  stdout.write(fruits.containsKey("Pineapple"));
  stdout.write("\n");

  /// Iterating over elements of a Map
  stdout.write("Iterating over elements of a Map : ");
  for(var name in fruits.keys)
    {
      stdout.write("$name : ${fruits[name]}");
      stdout.write("\n");
    }
  stdout.write("\n");

  /// print key and value of Map Using entries property
  for(var name in fruits.entries)
    {
      stdout.write("${name.key} : ${name.value}");
      stdout.write("\n");
    }
  stdout.write("\n");

  /// Usage of forEach Loop
  stdout.write("Usage of forEach Loop : ");
  fruits.forEach((key, value) {
    return stdout.write("$key : $value\n");
  },);
}

/// OUTPUT :
/// Map is : {apple: 1, banana: 2, orange: 3}
// Accessing elements from a Map : 2
// Adding element to a Map : {apple: 1, banana: 2, orange: 3, strawberry: 4}
// Updating element from a Map : {apple: 1, banana: 2, orange: 10, strawberry: 4}
// Removing elements from a Map : {apple: 1, banana: 2, orange: 10}
// isEmpty : It returns true if the List is empty and false if the List is not empty : false
// isNotEmpty : It returns true if the List is not empty and false if the List is empty : true
// Finding the Map Length : 3
// Printing all the keys : (apple, banana, orange)
// Printing all the values : (1, 2, 10)
// Checking the existence of keys or values : true
// false
// Iterating over elements of a Map : apple : 1
// banana : 2
// orange : 10
//
// apple : 1
// banana : 2
// orange : 10
//
// Usage of forEach Loop : apple : 1
// banana : 2
// orange : 10