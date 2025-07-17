class Shape {
  void draw() {
    print("Drawing a shape");
  }
}

class Circle extends Shape {
  @override
  void draw() {
    print("Drawing a Circle");
  }
}

class Square extends Shape {
  @override
  void draw() {
    print("Drawing a Square");
  }
}

void main() {
  Shape s1 = Circle(); 
  Shape s2 = Square(); 

  s1.draw(); 
  s2.draw(); 
}
