void main() {
  int number = 10;

  if (number > 0) {
    print("$number is positive");
  } else if (number < 0) {
    print("$number is negative");
  } else {
    print("Number is zero");
  }
  
  String result = (number % 2 == 0) ? "Even" : "Odd";
  print("The number is $result");
}