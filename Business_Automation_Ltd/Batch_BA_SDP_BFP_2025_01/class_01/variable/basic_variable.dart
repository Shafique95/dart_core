void main() {
  // int
  int age = 25;
  print('Age: $age');

  // double
  double height = 5.9;
  print('Height: $height');

  // bool
  bool isStudent = true;
  print('Is Student: $isStudent');

  // String
  String name = 'John Doe';
  print('Name: $name');

  // List
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  print('Fruits: $fruits');

  // Map
  Map<String, int> grades = {'Math': 90, 'Science': 85, 'English': 88};
  print('Grades: $grades');


  // Set
  Set<int> uniqueNumbers = {1, 2, 3, 4, 3, 2};
  print('Unique Numbers: $uniqueNumbers');

  // dynamic
  dynamic dynamicValue = 'Hello';
  print('Dynamic Value (String): $dynamicValue');
  dynamicValue = 42;
  print('Dynamic Value (int): $dynamicValue');
  dynamicValue = 3.14;
  print('Dynamic Value (double): $dynamicValue');
}