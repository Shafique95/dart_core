void main() async {
  print(SumOfTwoNum(1, 0));
  print(SumOfTwoNum(2, 0));
  delay();
  print(SumOfTwoNum(3, 0));
  print(SumOfTwoNum(4, 0));

  String value = await returnFromAsync();
  print(value);

  print(SumOfTwoNum(5, 0));
  print(SumOfTwoNum(6, 0));
}

int SumOfTwoNum(a, b) {
  return a + b;
}

void delay() async {
  await Future.delayed(Duration(seconds: 2));
  print("delayed 2 sec under delay()");
}

Future<String> returnFromAsync() async {
  await Future.delayed(Duration(seconds: 3));
  return "Returned from async()";
}
