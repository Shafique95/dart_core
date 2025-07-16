Future<void> task1() async {
  print("Task 1 started");
  await Future.delayed(Duration(seconds: 2));
  print("Task 1 completed after 2 seconds");
}

Future<void> task2() async {
  print("Task 2 started");
  await Future.delayed(Duration(seconds: 1));
  print("Task 2 completed after 1 second");
}

void main() async {
  print("Main program started");
  await task1();
  await task2();
  print("Main program ended");
}