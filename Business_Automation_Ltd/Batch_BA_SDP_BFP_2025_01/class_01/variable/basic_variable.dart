var name = 10;

// Strongly typed variable
// camelCasevar age = 30;
// myName() => "John Doe";
// country name >>>> // countryName;
/// for all class , variables, functions, methods, etc. use camelCase

void main() {
  // int, double, bool, String, List, Map, Set, dynamic
  String empName = "John Doe";
  empName = "Kamal Hossain"; // Reassigning a new value
  print("Hello, $empName");
  print(name);
   Person("Alice", 25);
   Person("Bob", 30);
}

// some keywords in dart are
// abstract, assert, async, await, break, case, catch, class, const, continue, moset popular keywords are
class Person {
  // scope of class variables is within the class
  String? name; // class fields or class vaiables or class properties
  int? age;

  Person(name, age){
    // Constructor to initialize the class variables
    print("Person created: $name, Age: $age");

  }
  /// Method to display person's information
  void sdfsdfsf() {
    print("Name: $name, Age: $age");
  }
}
// block
// {
// block of code

// }
void printMyname() {
  name;
}
