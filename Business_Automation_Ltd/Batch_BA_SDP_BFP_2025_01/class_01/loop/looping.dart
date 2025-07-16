void main() {
  List<int> marks = [95, 85, 75, 65, 55];

  for (int mark in marks) {
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
