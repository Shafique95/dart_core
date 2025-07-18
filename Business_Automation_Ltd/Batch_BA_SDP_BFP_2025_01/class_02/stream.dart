Stream<int> getNumber() async* {
  for (int i = 0; i < 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  print("start Stream");

  await for (int s in getNumber()) {
    print("received : $s");
  }
  print("end Stream");
}
