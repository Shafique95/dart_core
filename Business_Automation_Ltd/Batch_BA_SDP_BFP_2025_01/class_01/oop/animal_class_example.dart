// This class defines an interface
abstract   class Animal {
  void makeSound();
}

// A class implements Animal's interface
 class Dog implements Animal {
  @override
  void makeSound() {
    print('Woof!');
  }
}

class Cat implements Animal {
  @override
  void makeSound() {
    print('Meow!');
  }
}

void main() {
  Animal dog = Dog();
  Animal cat = Cat();

  dog.makeSound(); // Woof!
  cat.makeSound(); // Meow!
}
