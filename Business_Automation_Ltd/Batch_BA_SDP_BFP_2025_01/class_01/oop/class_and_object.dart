class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduce() {
    print("Hi, my name is $name and I am $age years old.");
  }
}

void main() {
  Person p1 = Person("Juton", 25);
  p1.introduce();
}