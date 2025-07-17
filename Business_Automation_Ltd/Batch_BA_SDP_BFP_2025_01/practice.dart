void main() {
  // Create a stream that emits data every second
  Stream<int> numberStream = Stream.periodic(Duration(seconds: 1), (count) => count).take(5);

  numberStream.listen((value) {
    print('Value: $value');
  });
}
