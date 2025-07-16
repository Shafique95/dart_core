abstract class Grading {
  void grade();
}

class Student implements Grading {
  int mark;

  Student(this.mark);

  @override
  void grade() {
    if (mark >= 90) {
      print("$mark mark receives A grade");
    } else if (mark >= 80) {
      print("$mark mark receives B grade");
    } else if (mark >= 70) {
      print("$mark mark receives C grade");
    } else if (mark >= 60) {
      print("$mark mark receives D grade");
    } else {
      print("$mark mark receives F grade");
    }
  }
}

void main() {
  Student student = Student(72);
  student.grade();
}
