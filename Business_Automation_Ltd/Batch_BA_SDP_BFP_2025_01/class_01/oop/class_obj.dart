class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduce() {
    print("I am $name and I am $age years old.");
  }
}

void main() {
  Person p = Person("Majid", 22);
  p.introduce();
}
