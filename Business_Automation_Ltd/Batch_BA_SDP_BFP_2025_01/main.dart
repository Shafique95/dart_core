import 'class_01/function/function.dart';

void main() {
  print("Hello Dart");
  var retval=returnAvalue();
  print("Return value is: $retval");
  // Example usage:
  Author author = Author(
      name: "John Doe", email: "john@example.com", address: "123 Street");
  ManForMan book = ManForMan("The Journey", author, "Blue");

  WomanForWoman book2 = WomanForWoman("The Adventure", author, "Red");

  /// Selling books to Library
  Library library = Library(
      name: "City Library", address: "456 Avenue", books: [book, book2]);

  print(
      "Book1: ${book.name}, Author: ${book.author?.name}, Color: ${book.color}");
  print(
      "Book2: ${book2.name}, Author: ${book2.author?.name}, Color: ${book2.color}");
  print("Library: ${library.name}, Address: ${library.address}");

  Person person1 = Person("Alice", 25);
  person1.displayInfo();
}

class Author {
  String? name;
  String? email;
  String? address;
  Author({this.name, this.email, this.address});
}

class Person {
  String? name;
  int? age;

  Person(this.name, this.age) {
    print("Person created: $name, Age: $age");
  }

  void displayInfo() {
    print("Name: $name, Age: $age");
  }
}

class Book {
  String? name;
  Author? author;
  Book(this.name, this.author);
}

class ManForMan extends Book {
  String? color;

  ManForMan(String? name, Author? author, this.color) : super(name, author);
}

class WomanForWoman extends Book {
  String? color;

  WomanForWoman(super.name, super.author, this.color);
}

class Library {
  String? name;
  String? address;
  List<Book>? books; // Need 100 books to this lib

  Library({this.name, this.address, this.books});
}
