void grade(int, mark) {

  if (mark >= 90) {
    print("$mark mark receives A grade");
  } else if (mark >= 80) {
    print("$mark mark receivess B grade");
  } else if (mark >= 70) {
    print("$mark mark receivess C grade");
  } else if (mark >= 60) {
    print("$mark mark receivess D grade");
  } else {
    print("$mark mark receivess F grade");
  }
}

void main() {
  mark(92);
  mark(61);
  mark(74);
  mark(32);
  mark(87);
}
